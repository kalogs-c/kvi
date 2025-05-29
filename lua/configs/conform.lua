return {
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "eslint_d" },
		c = { "clang-format" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}
