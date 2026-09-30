function dcup --wraps='docker compose up -d' --description 'alias dcup docker compose up -d'
    docker compose up -d $argv
end
