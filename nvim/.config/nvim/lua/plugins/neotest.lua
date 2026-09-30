local disabled_in_vs_code = require("custom.util").disabled_in_vs_code
local map = vim.keymap.set
return {
  "nvim-neotest/neotest",
  cond = disabled_in_vs_code,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    {
      "fredrikaverpil/neotest-golang",
      version = "*",
    },
    "marilari88/neotest-vitest",
    "Issafalcon/neotest-dotnet",
    "rouge8/neotest-rust",
    "nvim-neotest/neotest-python",
    "jfpedroza/neotest-elixir",
  },
  ft = { "go", "typescriptreact", "javascriptreact" },
  config = function()
    local neotest_ns = vim.api.nvim_create_namespace "neotest"
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)
    require("neotest").setup {
      adapters = {
        require "neotest-golang" {
          runner = "gotestsum",
          go_test_args = { "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out" },
        },
        require "neotest-vitest",
        require "neotest-dotnet" {
          dap_adapter = "lldb",
        },
        require "neotest-elixir" {
          mix_task = "test.interactive",
        },
        require "neotest-rust" {},

        require "neotest-python" {
          -- Extra arguments for nvim-dap configuration
          -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
          dap = { justMyCode = false, console = "integratedTerminal" },
          -- Command line arguments for runner
          -- Can also be a function to return dynamic values
          args = { "--log-level", "DEBUG" },
          -- Runner to use. Will use pytest if available by default.
          -- Can be a function to return dynamic value.
          runner = "pytest",
          -- Custom python path for the runner.
          -- Can be a string or a list of strings.
          -- Can also be a function to return dynamic value.
          -- If not provided, the path will be inferred by checking for
          -- virtual envs in the local directory and for Pipenev/Poetry configs
          python = "./venv/bin/python",
          -- Returns if a given file path is a test file.
          -- NB: This function is called a lot so don't perform any heavy tasks within it.
          -- !!EXPERIMENTAL!! Enable shelling out to `pytest` to discover test
          -- instances for files containing a parametrize mark (default: false)
          pytest_discover_instances = true,
        },
      },
    }
  end,
  init = function()
    local ntest_run = "<cmd>lua require('neotest').run.run"

    map("n", "<leader>rt", ntest_run .. "()<CR>", { desc = "Test nearest" })
    map("n", "<leader>rT", ntest_run .. "({strategy='dap'})<CR>", { desc = "Debug nearest" })
    map("n", "<leader>Rt", ntest_run .. "({vim.fn.expand('%')})<CR>", { desc = "Test file" })
    map("n", "<leader>RT", ntest_run .. "({vim.fn.expand('%'),strategy = 'dap'})<CR>", { desc = "Debug file" })
    map("n", "<leader>rr", ntest_run .. "_last()<CR>", { desc = "Run last" })
    map("n", "<leader>RR", ntest_run .. "({strategy='dap'})<CR>", { desc = "Debug last" })
    map("n", "<leader>rw", "<cmd>lua require('neotest').watch.toggle()<CR>", { desc = "Debug last" })
    map("n", "<leader>RW", "<cmd>lua require('neotest').watch.toggle({suite = true})<CR>", { desc = "Watch all" })
  end,
}
