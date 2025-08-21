return {
	lua = {
		lsp = {
			name = "lua_ls",
			opts = {
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
		},
		tools = "stylua",
		fmt = "stylua",
	},
	go = {
		lsp = "gopls",
		tools = { "delve", "goimports", "gofumpt" },
		fmt = { "goimports", "gofumpt" },
	},
	zig = {
		lsp = "zls",
		fmt = "zigfmt",
	},
}
