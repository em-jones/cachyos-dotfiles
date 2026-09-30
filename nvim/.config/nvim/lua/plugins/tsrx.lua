return {
  "Ripple-TS/ripple",
  event = "VeryLazy",
  config = function(plugin)
    vim.opt.rtp:append(plugin.dir .. "/packages/nvim-plugin")
    require("ripple").setup(plugin)
  end,
}
