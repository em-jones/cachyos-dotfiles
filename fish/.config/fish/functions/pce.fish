function pce --wraps='podman compose exec' --description 'alias pce podman compose exec'
    podman compose exec $argv
end
