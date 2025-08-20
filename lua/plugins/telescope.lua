return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local opts = require("configs.telescope")
		require("telescope").setup(opts)
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
