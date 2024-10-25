local mason = {
	PATH = "skip",

	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},

	max_concurrent_installers = 10,
}

local mason_lsp = {
	automatic_installation = true,
	ensure_installed = {
		"lua_ls",
		"gopls",
		"elixirls",
	},
}

local mason_tools = {
	ensure_installed = {
		"stylua",
		"gofumpt",
	},
}

require("mason").setup(mason)
require("mason-lspconfig").setup(mason_lsp)
require("mason-tool-installer").setup(mason_tools)
