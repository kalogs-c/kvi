local builtin = require("telescope.builtin")

return {
	{
		"<leader>ff",
		function()
			builtin.find_files({
				hidden = true,
				file_ignore_patterns = { ".git/" },
			})
		end,
		desc = "find files",
	},
	{ "<leader>fw", builtin.live_grep, desc = "find words" },
	{ "<leader>fb", builtin.buffers, desc = "find buffers" },
	{ "<leader>fz", builtin.current_buffer_fuzzy_find, desc = "find in current buffer" },
}
