function dbp --wraps='pnpm -C ~/repos/t3-turbo-and-clerk/ db-push' --description 'alias dbp pnpm -C ~/repos/t3-turbo-and-clerk/ db-push'
  pnpm -C ~/repos/t3-turbo-and-clerk/ db-push $argv
        
end
