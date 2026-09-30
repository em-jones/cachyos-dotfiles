function pcl --wraps='podman compose logs' --description 'alias pcl podman compose logs'
    podman compose logs $argv
end
