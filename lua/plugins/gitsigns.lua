return {
	"lewis6991/gitsigns.nvim",
	event = "User FilePost",
	opts = function()
		local options = require("configs.gitsigns")
		options.current_line_blame = true
		return options
	end,
}
