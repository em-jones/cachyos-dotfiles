return {
  "michaelb/sniprun",
  ft = { "*" },
  build = "sh install.sh",
  config = function()
    local map = vim.keymap.set
    map("n", "sr", "<cmd>SnipRun<cr>", { desc = "goto def" })
    map("v", "sr", "<cmd>'<,'>SnipRun<cr>", { desc = "goto def" })
    require("sniprun").setup {
      interpreter_options = {
        CSharp_original = {
          compiler = "csc",
        },
      },
      display = {
        "TempFloatingWindow",
      },
    }
  end,
}
