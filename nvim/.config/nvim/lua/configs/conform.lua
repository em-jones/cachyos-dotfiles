local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt", lsp_format = "fallback" },
    astro = { "biome-check" },
    go = { "gofmt", "golangci-lint", "goimports-reviser", lsp_format = "fallback" },
    -- css = { "biome-check" },
    html = { "biome-check" },
    elixir = { "mix" },
    oxlint = {},
    typescript = { "biome-check" },
    javascript = { "biome-check" },
    javascriptreact = { "biome-check" },
    typescriptreact = { "biome-check" },
    markdown = { "markdownlint-cli2", "oxfmt" },
    json = { "deno_fmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
