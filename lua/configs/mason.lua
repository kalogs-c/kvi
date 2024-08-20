local mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web
    "svelte-language-server",
    "typescript-language-server",

    -- elixir
    "elixir-ls",

    -- golang
    "gopls",
    "gofumpt",

    -- C/C++
    "clangd",
    "clangd-format",
  },
}

return mason
