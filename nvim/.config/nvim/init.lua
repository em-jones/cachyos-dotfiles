if vim.g.vscode then
  vim.cmd [[
     nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
     nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
     nnoremap zc :call VSCodeNotify('editor.fold')<CR>
     nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
     nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
     nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
     nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>

     function! MoveCursor(direction) abort
         if(reg_recording() == '' && reg_executing() == '')
             return 'g'.a:direction
         else
             return a:direction
         endif
     endfunction

     nmap <expr> j MoveCursor('j')
     nmap <expr> k MoveCursor('k')
  ]]
else
  vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
  vim.g.mapleader = " "
  vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/snippets"
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.g.copilot_no_tab_map = true
  vim.o.guifont = "Comic Code Ligatures"

  vim.diagnostic.config { virtual_text = false }

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "www.hackerrank.com_*.txt",
    command = "set filetype=python",
  })

  -- bootstrap lazy and all plugins
  local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

  if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
  end

  vim.opt.rtp:prepend(lazypath)

  local lazy_config = require "configs.lazy"

  -- load plugins
  require("lazy").setup({
    {
      "NvChad/NvChad",
      lazy = false,
      branch = "v2.5",
      import = "nvchad.plugins",
    },

    { import = "plugins" },
  }, lazy_config)
  vim.opt.relativenumber = true
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  vim.opt.foldlevelstart = 5
  -- load theme
  dofile(vim.g.base46_cache .. "defaults")
  dofile(vim.g.base46_cache .. "statusline")

  require "options"
  require "autocmds"

  vim.schedule(function()
    require "mappings"
  end)

  -- vim.api.nvim_set_keymap(
  --   "n",
  --   "<C-+>",
  --   ":lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1,  1.0)<CR>",
  --   { silent = true }
  -- )
  -- vim.api.nvim_set_keymap(
  --   "n",
  --   "<C-_>",
  --   ":lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1,  0.1)<CR>",
  --   { silent = true }
  -- )
  -- vim.api.nvim_set_keymap(
  --   "n",
  --   "<A-+>",
  --   ":lua vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + 0.05, 1.0)<CR>",
  --   { silent = true }
  -- )
  -- vim.api.nvim_set_keymap(
  --   "n",
  --   "<A-_>",
  --   ":lua vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - 0.05, 0.0)<CR>",
  --   { silent = true }
  -- )
  -- vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 0.5<CR>", { silent = true })
  -- vim.api.nvim_set_keymap("n", "<C-)>", ":lua vim.g.neovide_transparency = 0.9<CR>", { silent = true })
  --
  function _G.compare_to_clipboard()
    local ftype = vim.api.nvim_eval "&filetype"
    vim.cmd "leftabove vnew [Clipboard]" -- Open a new vertical split, above the current window, named [Clipboard]
    vim.cmd "setlocal bufhidden=wipe buftype=nofile noswapfile" -- Set options for a temporary scratch buffer
    vim.cmd "put +" -- Paste the content from the '+' (system) register into the new buffer
    vim.cmd "0d_" -- Delete the extra newline that `put` might add
    vim.cmd [[silent %s/\r$//e]] -- Remove Windows-style carriage returns if present
    vim.cmd("execute " .. "setlocal filetype=" .. ftype) -- Set the filetype to match the original buffer
    vim.cmd "diffthis" -- Start diff mode for the new buffer
    vim.cmd "wincmd p" -- Jump back to the original window
    vim.cmd "diffthis" -- Start diff mode for the original buffer
  end

  -- Create a user command for easy access
  vim.api.nvim_create_user_command(
    "DiffWithClipboard",
    _G.compare_to_clipboard,
    { desc = "Compare active file with clipboard contents" }
  )
end
