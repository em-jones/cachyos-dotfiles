return {
  "oskarrrrrrr/symbols.nvim",
  event = "VeryLazy",
  config = function()
    local r = require "symbols.recipes"
    require("symbols").setup(r.DefaultFilters, r.AsciiSymbols, {
      providers = {
        priority = {
          elixir = { "lsp", "treesitter" },
        },
      },
    })
    vim.keymap.set("n", ",s", "<cmd>Symbols<CR>")
    vim.keymap.set("n", ",S", "<cmd>SymbolsClose<CR>")
  end,
}
