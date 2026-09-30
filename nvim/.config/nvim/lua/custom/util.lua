local M = {}
function M.disabled_in_vs_code()
  return not vim.g.vscode
end
return M
