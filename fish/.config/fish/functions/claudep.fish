function claudep --wraps='source ~/.config/.venv/bin/activate.fish && set -x ANTHROPIC_BASE_URL http://localhost:8787 && claude' --description 'alias claudep source ~/.config/.venv/bin/activate.fish && set -x ANTHROPIC_BASE_URL http://localhost:8787 && claude'
    source ~/.config/.venv/bin/activate.fish && set -x ANTHROPIC_BASE_URL http://localhost:8787 && claude $argv
end
