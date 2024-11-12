return {
	formatters_by_ft = {
		lua = { "stylua" },
		elixir = { "mix format" },
		go = { "goimports", "gofumpt" },
		javascript = { "eslint_d" },
		typescript = { "eslint_d" },
		rust = { "rustfmt" },
		c = { "clang-format" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}
