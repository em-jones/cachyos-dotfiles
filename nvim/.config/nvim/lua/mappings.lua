require "nvchad.mappings"

-- add yours here
local tmux_move = function(direction)
  return "<cmd> lua require('tmux').move_" .. direction .. "()<CR>"
end

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
if os.getenv "HERDR_ENV" == "1" then
  dofile "/home/em/repos/vim-herdr-navigation-rs/editor/nvim.lua"
else
  map("n", "<C-h>", tmux_move "left", { desc = "Window Left" })
  map("n", "<C-l>", tmux_move "right", { desc = "Window Right" })
  map("n", "<C-k>", tmux_move "top", { desc = "Window up" })
  map("n", "<C-j>", tmux_move "bottom", { desc = "Window down" })
end
map("n", "<C-->", "<C-w>s", { nowait = true })
map("n", "<ctrl-->", "<C-w>s", { nowait = true })
map("n", "<C-\\>", "<C-w>v", { nowait = true })
map("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "goto def" })
map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "goto def" })
map("n", "<leader>tt", "<cmd>Telescope diagnostics<cr>", { desc = "goto def" })
map("n", "<leader>tr", "<cmd>Telescope lsp_references<cr>", { desc = "goto def" })
map("n", "<leader>sy", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "goto def" })
map("n", "<leader>nh", "<cmd>Gitsigns next_hunk<cr>", { desc = "next hunk" })
map("n", "<leader>ph", "<cmd>Gitsigns prev_hunk<cr>", { desc = "prev hunk" })
-- Map <leader>pa to copy absolute path
map("n", "<leader>pa", ":let @+=expand('%:p')<CR>", { desc = "Copy absolute file path" })

-- Map <leader>pr to copy relative path
map("n", "<leader>pr", ":let @+=expand('%')<CR>", { desc = "Copy relative file path" })

-- Map <leader>pn to copy filename only
map("n", "<leader>pn", ":let @+=expand('%:t')<CR>", { desc = "Copy filename only" })

-- find
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>", { desc = "Find files" })
map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", { desc = "Find all" })
map("n", "<leader>fs", "<cmd> w <CR>", { desc = "Save file" })
map("n", "<leader>fg", '<cmd> Telescope live_grep additional_args={"--hidden"}<CR>', { desc = "Live grep" })
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>", { desc = "Help page" })
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", { desc = "Find oldfiles" })
map("n", "<leader>fz", "<cmd> Telescope current_buffer_fuzzy_find <CR>", { desc = "Find in current buffer" })
map("n", "<leader>cd", function()
  require("neogen").generate()
end, { desc = "Generate Docstring" })

-- git
map("n", "<leader>cm", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>", { desc = "Git status" })

-- pick a hidden term
map("n", "<leader>pt", "<cmd> Telescope terms <CR>", { desc = "Pick hidden term" })

-- theme switcher
map("n", "<leader>th", "<cmd> Telescope themes <CR>", { desc = "Nvchad themes" })

map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "telescope bookmarks" })
map("n", "<leader>ca", "<cmd> lua vim.lsp.buf.code_action() <CR>", { desc = "Code Actions" })
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end)
map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end)
map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end)
map("n", "<S-x>", function()
  require("nvchad.tabufline").close_buffer()
end)
map("n", "<leader>bt", function()
  require("base46").toggle_transparency()
end)
map("n", "<leader>dk", function()
  require("dial.map").manipulate "increment"
end)
map("n", "<leader>dj", function()
  require("dial.map").manipulate "decrement"
end)

-- visual
--
-- v = {
--   ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
--   ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
--   ["<"] = { "<gv", "Indent line" },
--   [">"] = { ">gv", "Indent line" },
-- },
-- normal
-- ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
-- ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
-- ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
-- ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },

-- map(map("n", "i", "v" }) "<C-s>", "<cmd> w <cr>")
