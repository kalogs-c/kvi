return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({
			defaults = {
				prompt_prefix = "   ",
				selection_caret = " ",
				entry_prefix = " ",
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
					},
					width = 0.87,
					height = 0.80,
				},
			},
		})
	end,
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files({
					hidden = true,
					file_ignore_patterns = { ".git/" },
				})
			end,
			desc = "find files",
		},
		{ "<leader>fw", require("telescope.builtin").live_grep, desc = "find words" },
		{ "<leader>fb", require("telescope.builtin").buffers, desc = "find buffers" },
		{ "<leader>fz", require("telescope.builtin").current_buffer_fuzzy_find, desc = "find in current buffer" },
	},
}
