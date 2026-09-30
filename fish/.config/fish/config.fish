set -x DOTNET_ROOT /usr/share/dotnet
set -x theme_color_scheme nord
set -U fish_greeting ""
fish_add_path ~/dotnet
fish_add_path ~/.cargo/bin
if echo $ELS_MODE | grep -q 'debug_adapter'
else
   # devbox picks its output syntax from $SHELL, so a fish started by a
   # zsh/bash parent (agent tooling, `fish -c` from a script) gets bash
   # `if ...; then` piped into `source`. Pin it to this fish.
   SHELL=(status fish-path) devbox global shellenv --init-hook | source
end
set -x PODMAN_COMPOSE_PROVIDER podman-compose

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
fish_add_path ~/.bun/bin/

# opencode
fish_add_path /home/em/.opencode/bin

if test -f "$PWD/devbox.json"  
   eval (devbox shellenv --preserve-path-stack -c $PWD | string collect)
end


# if not test -d $HOME/.rustup
#     echo "Installing Rustup"
#     mkdir -p $HOME/.rustup
#     set -x RUSTUP_HOME $HOME/.rustup
#     set -x CARGO_HOME $HOME/.cargo
#     set -x PATH $CARGO_HOME/bin:$PATH
#     set -x LIBRARY_PATH $LIBRARY_PATH:\"$HOME/.local/share/devbox/global/default/.devbox/nix/profile/default/lib\"
#     rustup default stable
# end

# Added by get-aspire-cli.sh
fish_add_path $HOME/.aspire/bin

# NemoClaw PATH setup
fish_add_path --path --append "/home/em/.local/bin"
# fish_add_path --path --append "/home/em/.vite-plus/js_runtime/node/24.15.0/bin"
# end NemoClaw PATH setup

# OpenClaw Completion
fish_add_path /opt/nvim/bin/

if not [ "$HERDR_ENV" = "1" ]
  set -Ux EM_TASK_SURREAL_URL wss://ems-surrealdb.fly.dev/rpc
  set -Ux SURREAL_USER root
  set -Ux SURREAL_PASS (pass TASK_DB)
end

# moonbit
fish_add_path "$HOME/.moon/bin"

# moonbit
fish_add_path "$HOME/.moon/bin"
set -x SURREAL_PASS (pass TASK_DB)
set -x SURREAL_USER root
fish_add_path /home/em/.local/share/nvim/mason/bin/
set -x PLAYWRIGHT_MCP_CONFIG ".playwright/cli.config.json"
set -x VISUAL nvim
set -x EDITOR nvim

# gpg: pinentry-curses needs the tty; without it signing times out mid-ceremony
if status is-interactive
    set -gx GPG_TTY (tty)
end
