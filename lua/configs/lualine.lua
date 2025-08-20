local mode_map = {
	NORMAL = "N",
	INSERT = "I",
	VISUAL = "V",
	TERMINAL = "T",
	COMMAND = "C",
}

local colors = {
	white = "#ffffff",
	violet = "#d45fde",
	blue = "#80a0ff",
	cyan = "#79dac8",
}

local theme = {
	normal = {
		a = { fg = colors.white, bg = colors.violet },
		b = { fg = colors.violet },
	},
	insert = {
		a = { fg = colors.white, bg = colors.cyan },
		b = { fg = colors.cyan },
	},
	visual = {
		a = { fg = colors.white, bg = colors.blue },
		b = { fg = colors.blue },
	},
	inactive = {
		b = { fg = colors.white },
	},
}

return {
	options = {
		theme = theme,
		component_separators = "",
		section_separators = "",
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(m)
					return mode_map[m] or m
				end,
			},
		},
		lualine_b = {
			{
				"buffers",
				symbols = { alternate_file = "" },
				hide_filename_extension = true,
			},
		},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
}
