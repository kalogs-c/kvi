pcall(function()
	dofile(vim.g.base46_cache .. "syntax")
	dofile(vim.g.base46_cache .. "treesitter")
end)

return {
	ensure_installed = {
		"printf",
		"vim",
		"vimdoc",

		"jsonc",
		"yaml",
		"markdown",
		"markdown_inline",
		"bash",
		"sql",

		"lua",
		"luadoc",

		"elixir",
		"heex",
		"gleam",

		"go",
		"rust",

		"typescript",
		"javascript",
		"jsdoc",

		"python",
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}
