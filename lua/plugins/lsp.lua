return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
	},
	event = { "BufReadPre", "BufNewFile", "User FilePost" },
	config = function()
		require("configs.languages.lsp")
		require("configs.languages.mason")
	end,
}
