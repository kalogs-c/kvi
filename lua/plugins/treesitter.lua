return {
	"nvim-treesitter/nvim-treesitter",
  version = false,
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSInstall", "TSUpdateSync", "TSUpdate" },
	build = ":TSUpdate",
  lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
	opts = require "configs.languages.treesitter",
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
