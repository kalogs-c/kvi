local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		elixir = { "mix" },
		go = { "goimports", "gofumpt" },
		javascript = { "eslint_d" },
		typescript = { "eslint_d" },
	},

	format_on_save = {
		timeout_ms = 5000,
		lsp_fallback = true,
	},
}

return options
