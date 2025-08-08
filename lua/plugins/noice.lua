return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local opts = require("configs.noice")
		require("noice").setup(opts)
	end,
}
