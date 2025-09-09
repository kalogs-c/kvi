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
		lsp = {
			name = "gopls",
			opts = {
				settings = {
					gopls = {
						hints = {
							compositeLiteralFields = true,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = true,
						},
						analyses = {
							nilness = true,
							unusedparams = true,
							unusedwrite = true,
							useany = true,
						},
						usePlaceholders = true,
						completeUnimported = true,
						directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
						semanticTokens = true,
					},
				},
			},
		},
		tools = { "delve", "goimports", "gofumpt" },
		fmt = { "goimports", "gofumpt" },
	},
	zig = {
		lsp = "zls",
		fmt = "zigfmt",
	},
	elixir = {
		lsp = {
			name = "elixirls",
			opts = {
				cmd = { vim.fn.expand("$HOME/") .. "/.local/share/nvim/mason/bin/elixir-ls" },
			},
		},
		fmt = "mix format",
	},
}
