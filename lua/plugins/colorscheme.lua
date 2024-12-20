return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		no_italic = true,
		term_colors = true,
		transparent_background = false,
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
		},
		color_overrides = {
			mocha = {
				base = "#0E1018",
				mantle = "#0E1018",
				crust = "#0E1018",
			},
		},
		integrations = {
			telescope = {
				enabled = true,
			},
			dropbar = {
				enabled = true,
				color_mode = true,
			},
		},
	},
}
