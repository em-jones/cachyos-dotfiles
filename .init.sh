#!/usr/bin/env bash
# dotfiles bootstrap for a barebones CachyOS + niri install.
# Usage:
#   git clone <your-dotfiles-url> ~/dotfiles
#   cd ~/dotfiles && bash .init.sh
#
# Idempotent: safe to re-run. Pass --yes to skip confirmations.
set -euo pipefail

YES=0
[[ "${1:-}" == "--yes" || "${1:-}" == "-y" ]] && YES=1
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

log()  { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33mWARN\033[0m %s\n' "$*"; }
die()  { printf '\033[1;31mERR\033[0m %s\n' "$*" >&2; exit 1; }

confirm() {
  [[ $YES -eq 1 ]] && return 0
  read -rp "$1 [y/N] " ans
  [[ "$ans" == "y" || "$ans" == "Y" ]]
}

command -v pacman >/dev/null 2>&1 || die "pacman not found — this script targets CachyOS/Arch."

# ---------------------------------------------------------------- packages ---
# Curated from `pacman -Qe` on the source machine. Only what a barebones
# cachyos+niri setup actually needs: compositor stack, terminal, editor,
# shell, session management, search, secrets, fonts. Everything else
# (docker, k8s, dotnet, calibre, games…) install on demand.
PACMAN_PKGS=(
  # niri compositor stack
  niri waybar swaync wofi swaybg swayidle swaylock
  xdg-desktop-portal xdg-desktop-portal-wlr xwayland-satellite
  wl-clipboard brightnessctl playerctl pavucontrol
  networkmanager-dmenu flameshot gnome-keyring
  # shell + terminal + session management (tmux is THE session manager;
  # cmux carries the same keymap for GUI use; grapple/arrow do it in nvim)
  fish tmux ghostty stow git openssh
  # editor + tooling
  neovim ripgrep fd fzf bat btop tree-sitter-cli
  # secrets / signing (fish config reads SURREAL_PASS via `pass`)
  pass gnupg
  # fonts (ghostty/waybar/wofi all expect MesloLGM Nerd Font)
  ttf-meslo-nerd otf-atkinsonhyperlegiblemono-nerd
  noto-fonts noto-fonts-emoji
  # login + input
  ly keyd
  # runtimes opencode/serena need
  nodejs npm python uv
)

# AUR only: not in official repos / cachyos repos.
AUR_PKGS=(
  yay-bin          # AUR helper itself (skipped if already present)
  cmux-gtk         # GUI session manager (tmux keymap port, see cmux/cmux.json)
  opencode-bin     # AI agent TUI (config in opencode/)
  asdf-vm-git      # runtime versions (fish config wires shims)
)

install_pacman() {
  log "Installing official packages (pacman)…"
  sudo pacman -Syu --needed --noconfirm "${PACMAN_PKGS[@]}"
}

ensure_yay() {
  if command -v yay >/dev/null 2>&1; then return 0; fi
  log "yay not found — building yay-bin from AUR…"
  sudo pacman -S --needed --noconfirm base-devel git
  tmp="$(mktemp -d)"
  git clone https://aur.archlinux.org/yay-bin.git "$tmp/yay-bin"
  (cd "$tmp/yay-bin" && makepkg -si --noconfirm)
  rm -rf "$tmp"
}

install_aur() {
  ensure_yay
  log "Installing AUR packages (yay)…"
  # shellcheck disable=SC2068
  yay -S --needed --noconfirm ${AUR_PKGS[@]:1}  # [0] is yay-bin itself
}

# ------------------------------------------------------------------ stow ----
STOW_PKGS=(fish nvim niri tmux ghostty waybar wofi swaync opencode cmux zenbook-duo git)

link_dotfiles() {
  command -v stow >/dev/null 2>&1 || sudo pacman -S --needed --noconfirm stow
  log "Linking dotfiles with stow…"
  cd "$DOTFILES_DIR"
  for pkg in "${STOW_PKGS[@]}"; do
    log "  stow $pkg"
    stow --restow --target="$HOME" "$pkg"
  done
  warn "git package links ~/.gitconfig — edit user.email/name afterwards if this isn't your machine"
}

# ------------------------------------------------------------------- fish ---
setup_fish() {
  log "Setting fish as default shell…"
  if [[ "$SHELL" != *fish ]]; then
    command -v fish >/dev/null 2>&1 || die "fish not installed"
    sudo chsh -s "$(command -v fish)" "$USER" || warn "chsh failed — set shell manually"
  fi
  log "Installing oh-my-fish + budspencer theme (as on source machine)…"
  if [[ ! -d "$HOME/.config/omf" ]]; then
    fish -c 'curl -L https://get.oh-my.fish | fish --init-command="set -g OMF_NONINTERACTIVE 1"' || warn "omf install failed"
  fi
  fish -c 'omf install budspencer 2>/dev/null || true' || true
  if [[ -f "$HOME/.config/fish/fish_plugins" ]] && command -v fisher >/dev/null 2>&1; then
    fish -c 'fisher update' || warn "fisher update failed"
  else
    warn "fisher not installed — dotenv.fish is already vendored in fish/.config/fish/conf.d/, skipping"
  fi
}

# ------------------------------------------------------------------- nvim ---
setup_nvim() {
  log "Neovim: lazy.nvim bootstraps itself on first run; syncing plugins…"
  # Headless sync pulls NvChad + all lua/plugins/*. Includes session stack:
  # grapple.nvim (git-scoped file tags, <leader>m/M/n/p), arrow.nvim (; leader),
  # snacks.nvim picker (projects/recent/buffers, <leader>fp/fr/<space>).
  nvim --headless "+Lazy! sync" +qa || warn "nvim Lazy sync failed — run :Lazy sync manually"
  if command -v MasonToolsInstall >/dev/null 2>&1; then true; fi
  warn "Mason LSPs/tools install on demand via :Mason (see nvim/lua/configs/lspconfig.lua)"
}

# ---------------------------------------------------------------- opencode ---
setup_opencode() {
  if [[ -f "$DOTFILES_DIR/opencode/.config/opencode/package.json" ]]; then
    log "Installing opencode plugins (npm)…"
    (cd "$DOTFILES_DIR/opencode/.config/opencode" && npm install --no-audit --no-fund || warn "npm install failed")
  fi
  log "opencode MCP servers expected on PATH: jcodemunch-mcp, jdocmunch-mcp, headroom, uvx (serena). Install them if opencode warns."
}

# --------------------------------------------------------------- services ---
setup_services() {
  log "Enabling user services…"
  systemctl --user daemon-reload 2>/dev/null || true
  for svc in gnome-keyring-daemon.socket; do
    systemctl --user enable --now "$svc" 2>/dev/null || warn "could not enable $svc"
  done
  if confirm "Enable ly display manager (systemd)?"; then
    sudo systemctl enable ly 2>/dev/null || warn "could not enable ly"
  fi
  if confirm "Enable + start keyd (systemd)?"; then
    sudo systemctl enable --now keyd 2>/dev/null || warn "could not enable keyd"
  fi
}

# ---------------------------------------------------------------- wallpaper --
setup_wallpaper() {
  dir="$HOME/.local/share/wallpapers"
  mkdir -p "$dir"
  if [[ ! -f "$dir/nord-glass.png" ]]; then
    warn "niri config references $dir/nord-glass.png (Nord gradient) — not in dotfiles, copy it from the old machine or adjust spawn-at-startup"
  fi
}

main() {
  log "dotfiles: $DOTFILES_DIR"
  confirm "Install pacman packages?" && install_pacman || warn "skipped pacman"
  confirm "Install AUR packages?" && install_aur || warn "skipped AUR"
  link_dotfiles
  setup_fish
  setup_nvim
  setup_opencode
  setup_services
  setup_wallpaper
  log "Done. Re-login (or reboot) to land in fish on niri. Validate with: niri validate; tmux -V; nvim --version"
}

main
