-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

return {
  -- JS/TS
  svelte = {},
  tsserver = {},

  -- Elixir
  elixirls = {
    cmd = { vim.fn.expand "$HOME/" .. "/.local/share/nvim/mason/bin/elixir-ls" },
  },

  -- Go
  gopls = {},

  -- C/C++
  clangd = {},
}
