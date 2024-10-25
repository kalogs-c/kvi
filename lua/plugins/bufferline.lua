return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({})
	end,
	opts = {
		options = {
			mode = "tabs",
			middle_mouse_command = "bdelete! %d",
			right_mouse_command = nil,
		},
	},
}
