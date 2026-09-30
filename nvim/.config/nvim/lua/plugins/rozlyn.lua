return {
  "GustavEikaas/easy-dotnet.nvim",
  ft = { "csharp", "cs", "c_sharp" },
  dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
  config = function()
    require("easy-dotnet").setup()
  end,
}
