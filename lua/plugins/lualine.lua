local mode_map = {
    NORMAL = "N",
    INSERT = "I",
    VISUAL = "V",
    TERMINAL = "T",
    COMMAND = "C",
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
    options = {
        component_separators = "",
        section_separators = "",
        theme = "onedark",
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
}
