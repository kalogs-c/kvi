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

	javascript = {
		fmt = "prettier",
		lsp = "ts_ls",
	},

	html = {
		fmt = "prettier",
		lsp = "html",
		tools = "html-lsp",
	},

	css = {
		fmt = "prettier",
		lsp = "cssls",
	},

	java = {
		fmt = "google-java-format",
		lsp = "jdtls",
	},
}
