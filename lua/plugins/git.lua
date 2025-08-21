return {
	-- Signs
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		opts = {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
			current_line_blame = true,
		},
		keys = {
			{ "<leader>gdf", "<cmd>Gitsigns diffthis<CR>", desc = "git diff file" },
			{ "<leader>gdh", "<cmd>Gitsigns preview_hunk<CR>", desc = "git diff hunk" },
			{ "<leader>gsf", "<cmd>Gitsigns stage_buffer<CR>", desc = "git stage file" },
			{ "<leader>gsh", "<cmd>Gitsigns stage_hunk<CR>", desc = "git stage hunk" },
			{ "<leader>gsuh", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "git undo stage hunk" },
		},
	},
}
