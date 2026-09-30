-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/blink-cmp.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/blink-cmp.lua

-- HACK: blink.cmp updates | Remove LuaSnip | Emoji and Dictionary Sources | Fix Jump Autosave Issue
-- https://youtu.be/JrgfpWap_Pg

-- completion plugin with support for LSPs and external sources that updates
-- on every keystroke with minimal overhead

-- https://www.lazyvim.org/extras/coding/blink
-- https://github.com/saghen/blink.cmp
-- Documentation site: https://cmp.saghen.dev/

return {
  "saghen/blink.cmp",
  build = "cargo +nightly-2025-09-30 build --release",
  enabled = true,
  -- In case there are breaking changes and you want to go back to the last
  -- working release
  -- https://github.com/Saghen/blink.cmp/releases
  -- version = "v0.13.1",
  dependencies = {
    "moyiz/blink-emoji.nvim",
    "Kaiser-Yang/blink-cmp-dictionary",
    "fang2hou/blink-copilot",
  },
  opts = function(_, opts)
    local is_firenvim = vim.g.started_by_firenvim == true
    -- NOTE: The new way to enable LuaSnip
    -- Merge custom sources with the existing ones from lazyvim
    -- NOTE: by default lazyvim already includes the lazydev source, so not adding it here again
    opts.sources = vim.tbl_deep_extend("force", opts.sources or {}, {
      default = { "mooncake", "lsp", "path", "snippets", "buffer", "emoji", "dictionary", "copilot" },
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      providers = {
        mooncake = {
          name = "Mooncakes",
          module = "moonbit.mooncakes.completion.blink",
          opts = { max_items = 100 },
        },
        lsp = {
          name = "lsp",
          enabled = true,
          module = "blink.cmp.sources.lsp",
          -- When linking markdown notes, I would get snippets and text in the
          -- suggestions, I want those to show only if there are no LSP
          -- suggestions
          --
          -- Enabled fallbacks as this seems to be working now
          -- Disabling fallbacks as my snippets wouldn't show up when editing
          -- lua files
          -- fallbacks = { "snippets", "buffer" },
          score_offset = 90, -- the higher the number, the higher the priority
        },
        path = {
          name = "Path",
          module = "blink.cmp.sources.path",
          score_offset = 25,
          -- When typing a path, I would get snippets and text in the
          -- suggestions, I want those to show only if there are no path
          -- suggestions
          fallbacks = { "snippets", "buffer" },
          -- min_keyword_length = 2,
          opts = {
            trailing_slash = false,
            label_trailing_slash = true,
            get_cwd = function(context)
              return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
            end,
            show_hidden_files_by_default = true,
          },
        },
        buffer = {
          name = "Buffer",
          enabled = true,
          max_items = 3,
          module = "blink.cmp.sources.buffer",
          min_keyword_length = 2,
          score_offset = 15, -- the higher the number, the higher the priority
        },
        snippets = {
          name = "snippets",
          enabled = true,
          max_items = 15,
          min_keyword_length = 2,
          module = "blink.cmp.sources.snippets",
          score_offset = 85, -- the higher the number, the higher the priority
        },
        -- Example on how to configure dadbod found in the main repo
        -- https://github.com/kristijanhusak/vim-dadbod-completion
        dadbod = {
          name = "Dadbod",
          module = "vim_dadbod_completion.blink",
          min_keyword_length = 2,
          score_offset = 85, -- the higher the number, the higher the priority
        },
        -- https://github.com/moyiz/blink-emoji.nvim
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 93, -- the higher the number, the higher the priority
          min_keyword_length = 2,
          opts = { insert = true }, -- Insert emoji (default) or complete its name
        },
        dictionary = {
          module = "blink-cmp-dictionary",
          name = "Dict",
          min_keyword_length = 1,
          opts = {
            -- Optional: explicitly force fallback mode
            -- (By default, fallback is used when fzf is not found)
            force_fallback = true,
          },
        },
        -- https://github.com/Kaiser-Yang/blink-cmp-dictionary
        -- In macOS to get started with a dictionary:
        -- cp /usr/share/dict/words ~/github/dotfiles-latest/dictionaries/words.txt
        --
        -- NOTE: For the word definitions make sure "wn" is installed
        -- brew install wordnet
        -- -- Third class citizen mf always talking shit
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    })

    opts.cmdline = {
      enabled = true,
    }

    -- Don't let the completion menu pop back up while jumping between
    -- snippet placeholders with <C-[>/<C-]> below
    opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
      trigger = { show_in_snippet = false },
    })

    opts.snippets = {
      preset = "luasnip", -- Choose LuaSnip as the snippet engine
    }
    opts.keymap = {
      preset = "enter",
      ["<C-Space>"] = is_firenvim and { "show", "show_documentation", "hide" }
        or { "show", "show_documentation", "hide" },
      ["<Tab>"] = {
        function(cmp)
          if vim.b[vim.api.nvim_get_current_buf()].nes_state then
            cmp.hide()
            return (
              require("copilot-lsp.nes").apply_pending_nes()
              and require("copilot-lsp.nes").walk_cursor_end_edit()
            )
          end
        end,
        "select_next",
        "fallback",
      },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-]>"] = { "snippet_forward", "fallback" },
      ["<C-[>"] = { "snippet_backward", "fallback" },
    }

    return opts
  end,
}
