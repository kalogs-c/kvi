return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	cmd = { "Mason", "MasonInstall", "MasonUpdate" },
	config = function()
		require("configs.mason")
	end,
}
