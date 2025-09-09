local retrobox = {
	normal = {
		a = { bg = "#af5f5f", fg = "#1c1c1c", gui = "bold" },
		b = { bg = "#262626", fg = "#af5f5f" },
		c = { bg = "#1c1c1c", fg = "#d7d7af" },
	},
	insert = {
		a = { bg = "#87af5f", fg = "#1c1c1c", gui = "bold" },
		b = { bg = "#262626", fg = "#afd787" },
		c = { bg = "#1c1c1c", fg = "#d7d7af" },
	},
	visual = {
		a = { bg = "#d7af5f", fg = "#1c1c1c", gui = "bold" },
		b = { bg = "#262626", fg = "#ffd787" },
		c = { bg = "#1c1c1c", fg = "#d7d7af" },
	},
	replace = {
		a = { bg = "#5f8787", fg = "#1c1c1c", gui = "bold" },
		b = { bg = "#262626", fg = "#87afd7" },
		c = { bg = "#1c1c1c", fg = "#d7d7af" },
	},
	command = {
		a = { bg = "#af5f5f", fg = "#1c1c1c", gui = "bold" },
		b = { bg = "#262626", fg = "#d7af87" },
		c = { bg = "#1c1c1c", fg = "#d7d7af" },
	},
	inactive = {
		a = { bg = "#1c1c1c", fg = "#808080", gui = "bold" },
		b = { bg = "#1c1c1c", fg = "#808080" },
		c = { bg = "#1c1c1c", fg = "#808080" },
	},
}

local mode_map = {
	NORMAL = "N",
	INSERT = "I",
	VISUAL = "V",
	TERMINAL = "T",
	COMMAND = "C",
}

return {
	options = {
		component_separators = "",
		section_separators = "",
		theme = retrobox,
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
