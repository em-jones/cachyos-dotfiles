return {
  "stevearc/overseer.nvim",
  ft = { "elixir", "javascript", "typescript", "python", "go", "rust", "lua" },
  config = function()
    local os = require "overseer"
    os.setup()
  end,
}
