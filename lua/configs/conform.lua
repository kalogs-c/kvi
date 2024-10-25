return {
	formatters_by_ft = {
		lua = { "stylua" },
		elixir = { "mix format" },
		go = { "goimports", "gofumpt" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}
