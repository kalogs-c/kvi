return {
	{
		"<leader>fm",
		function()
			require("conform").format({ async = true, lsp_format = "fallback" })
		end,
		mode = { "n" },
		desc = "format file",
	},
}
