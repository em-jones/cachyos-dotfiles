return {
  "monaqa/dial.nvim",
  event = "VeryLazy",
  config = function()
    local augend = require "dial.augend"
    require("dial.config").augends:register_group {
      default = {
        augend.constant.alias.bool,
        augend.integer.alias.decimal_int,
        augend.date.alias["%d.%m.%Y"],
      },
    }
    vim.keymap.set("n", "<A-S-L>", require("dial.map").inc_normal(), { noremap = true })
    vim.keymap.set("n", "<A-S-H>", require("dial.map").dec_normal(), { noremap = true })
  end,
}
