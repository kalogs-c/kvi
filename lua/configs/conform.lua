local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		elixir = { "mix" },
		go = { "goimports", "gofumpt" },
	},

	format_on_save = {
		timeout_ms = 5000,
		lsp_fallback = true,
	},
}

return options
