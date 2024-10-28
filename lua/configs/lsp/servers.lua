-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
return {
	-- lua
	lua_ls = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim", "love" },
				},
				workspace = {
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
						vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
						"${3rd}/luv/library",
						"${3rd}/love2d/library",
					},
					maxPreload = 100000,
					preloadFileSize = 10000,
				},
			},
		},
	},

	-- Elixir
	elixirls = {
		cmd = { vim.fn.expand("$HOME/") .. "/.local/share/nvim/mason/bin/elixir-ls" },
	},

	-- Go
	gopls = {},

	-- JS/TS
	ts_ls = {},
	eslint = {},

	-- Rust
	rust_analyzer = {},
}
