function dbg --wraps='pnpm -C ~/repos/t3-turbo-and-clerk/ db-generate' --description 'alias dbg pnpm -C ~/repos/t3-turbo-and-clerk/ db-generate'
  pnpm -C ~/repos/t3-turbo-and-clerk/ db-generate $argv
        
end
