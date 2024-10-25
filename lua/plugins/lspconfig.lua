return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile", "User FilePost" },
	config = function()
		require("configs.lsp")
	end,
}
