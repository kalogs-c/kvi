return {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPre",
	opts = function()
		local options = require("configs.gitsigns")
		options.current_line_blame = true
		return options
	end,
}
