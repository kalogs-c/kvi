return {
	lua = {
		lsp = "lua_ls",
		tools = "stylua",
		fmt = "stylua",
	},
	go = {
		lsp = "gopls",
		tools = { "delve", "goimports", "gofumpt" },
		fmt = { "goimports", "gofumpt" },
	},
}
