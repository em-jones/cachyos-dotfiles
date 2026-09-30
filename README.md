# dotfiles — barebones CachyOS + niri

Portable setup snapshot: Nord-themed niri compositor, fish shell, Neovim (NvChad),
tmux session management, and the surrounding GUI stack. GNU Stow layout — each
top-level dir is a stow package that symlinks into `$HOME`.

```text
fish/        -> ~/.config/fish        (config.fish, functions/, completions/, omf theme)
nvim/        -> ~/.config/nvim        (NvChad + lazy.nvim, see lua/plugins/)
niri/        -> ~/.config/niri        (config.kdl — keybinds, blur, spawn-at-startup)
tmux/        -> ~/.config/tmux        (prefix C-Space, vim-aware C-h/j/k/l, Nord bar)
ghostty/     -> ~/.config/ghostty     (translucent, MesloLGM Nerd Font)
waybar/      -> ~/.config/waybar      (frosted pill, niri/workspaces module)
wofi/        -> ~/.config/wofi        (Nord glass launcher, Mod+D)
swaync/      -> ~/.config/swaync      (notification center)
cmux/        -> ~/.config/cmux        (GUI session manager, tmux keymap port)
opencode/    -> ~/.config/opencode    (opencode.json MCP: jcodemunch/jdocmunch/headroom/serena)
zenbook-duo/ -> ~/.config/zenbook-duo (optional: dual-panel helpers, `duo set-displays`)
git/         -> ~/.gitconfig          (stowed like the rest; edit user.email/name per machine)
```

## Session management (the important bit)

| Layer    | Tool | Config | Usage |
|----------|------|--------|-------|
| Terminal | **tmux** | `tmux/.config/tmux/tmux.conf` | Prefix `C-Space`. Splits `prefix+\` / `prefix+-`. Vim-aware `C-h/j/k/l` move between nvim and panes. `Alt+1..6` switch windows. Nord status bar on top. No resurrect plugin — sessions are intentionally ephemeral; persistent state lives in the next two rows. |
| GUI      | **cmux** | `cmux/.config/cmux/cmux.json` | Same keymap ported (`ctrl+space` prefix, `ctrl+alt+h/j/k/l` for focus — plain `C-h/j/k/l` stays with nvim; see cmux#2772 note in file). |
| Editor   | **grapple.nvim** + **arrow.nvim** | `nvim/lua/plugins/grapple.lua`, `arrow.lua` | File bookmarks persist across restarts. Grapple: `<leader>m` toggle tag, `<leader>M` window, `<leader>n/p` cycle (scope: git). Arrow: `;` leader, `m` per-buffer. |
| Editor   | **snacks.nvim picker** | `nvim/lua/plugins/snacks.lua` | `<leader>fp` projects, `<leader>fr` recent, `<leader><space>` smart files, `<leader>,` buffers — the "reopen where I was" workflow. |

## Fresh install

```bash
git clone <your-dotfiles-url> ~/dotfiles
cd ~/dotfiles && bash .init.sh
# or non-interactive: bash .init.sh --yes
```

`.init.sh` installs curated pacman + AUR packages, stows the configs,
sets fish as login shell, installs omf/budspencer, syncs Neovim plugins,
installs opencode npm deps, and enables user services. Idempotent — safe to re-run.

### Post-install checklist

- [ ] `niri validate` passes; re-login to enter the niri session
- [ ] Copy `~/.local/share/wallpapers/nord-glass.png` from the old machine (referenced by niri `spawn-at-startup`)
- [ ] Secrets are **not** in this repo: `set -Ux SURREAL_USER root` / `set -Ux SURREAL_PASS (pass TASK_DB)` (fish config reads them via `pass`, see `config.fish`)
- [ ] `~/.config/fish/fish_variables` is gitignored — seed from `fish_variables.example`
- [ ] `:Mason` in nvim for LSPs/tools; `:Lazy sync` if headless sync failed
- [ ] opencode MCP binaries on PATH: `jcodemunch-mcp`, `jdocmunch-mcp`, `headroom`, `uvx`
- [ ] Machine-specific fish functions (`fs*`, `fly`, k8s helpers) may point at private infra — audit `fish/.config/fish/functions/`

## What's deliberately excluded

`fish_variables` (contains secrets), `node_modules/`, `__pycache__/`, `tmp/`,
`.claude/settings.local.json`, password-store, wallpapers, and all of `~/repos`.
Full explicit package list lives in `.init.sh` (`PACMAN_PKGS` / `AUR_PKGS`).
