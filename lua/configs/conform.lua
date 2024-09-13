-- https://github.com/stevearc/conform.nvim/blob/master/README.md#formatters

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    elixir = { "mix" },

    -- JS/TS
    typescript = { "eslint_d" },
    javascript = { "eslint_d" },
    svelte = { "eslint_d" },

    -- C/C++
    c = { "clang-format" },
    cpp = { "clang-format" },
    h = { "clang-format" },
    hpp = { "clang-format" },

    -- Go
    go = { "goimports", "gofumpt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
