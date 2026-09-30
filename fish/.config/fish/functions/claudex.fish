function claudex --description 'Run Claude Code through CLIProxyAPI with GPT models'

    env \
        ANTHROPIC_BASE_URL=http://localhost:20128/v1 \
        ANTHROPIC_AUTH_TOKEN="$(pass OMNIROUTE_API_KEY)" \
        ANTHROPIC_DEFAULT_OPUS_MODEL=cx/gpt-5.6-sol \
        ANTHROPIC_DEFAULT_SONNET_MODEL=cx/gpt-5.6-terra \
        ANTHROPIC_DEFAULT_FABLE_MODEL=cx/gpt-5.6-sol \
        ANTHROPIC_DEFAULT_HAIKU_MODEL=cx/gpt-5.6-luna \
        claude $argv
end
