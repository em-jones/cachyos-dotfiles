return {
  "copilotlsp-nvim/copilot-lsp",
  init = function()
    vim.g.copilot_nes_debounce = 500
    vim.lsp.enable "copilot_ls"
    vim.keymap.set("i", "<C-x>", function()
      local bufnr = vim.api.nvim_get_current_buf()
      if not vim.b[bufnr].nes_state then
        return "<C-x>"
      end

      local nes = require "copilot-lsp.nes"
      if nes.apply_pending_nes() then
        nes.walk_cursor_end_edit()
      end
      return ""
    end, { desc = "Accept Copilot NES suggestion", expr = true })

    vim.keymap.set("n", "<tab>", function()
      local bufnr = vim.api.nvim_get_current_buf()
      local state = vim.b[bufnr].nes_state
      if state then
        local _ = require("copilot-lsp.nes").walk_cursor_start_edit()
          or (require("copilot-lsp.nes").apply_pending_nes() and require("copilot-lsp.nes").walk_cursor_end_edit())
        return nil
      else
        return "<C-i>"
      end
    end, { desc = "Accept Copilot NES suggestion", expr = true })
  end,
}
