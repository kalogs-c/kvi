return {
	"vim-test/vim-test",
	cmd = { "TestLast", "TestNearest", "TestFile", "TestSuite" },
	keys = {
		{ "<leader>trn", ":TestNearest<cr>", "TEST - Run Nearest" },
		{ "<leader>trf", ":TestFile<cr>", "TEST - Run File" },
	},
	config = function()
		vim.g["test#custom_strategies"] = {
			kvi = function(cmd)
				-- Open a new vertical split for the terminal
				vim.cmd.vnew()

				-- Run the test command
				vim.fn.jobstart(cmd, {
					term = true,
				})

				-- Set buffer-local variable so that terminal doesn't enter insert mode
				local bufnr = vim.api.nvim_get_current_buf()
				vim.api.nvim_buf_set_var(bufnr, "is_vimtest_terminal", true)
				vim.cmd.stopinsert() -- Make sure we are not in insert mode
			end,
		}

		vim.g["test#strategy"] = "kvi"
	end,
}
