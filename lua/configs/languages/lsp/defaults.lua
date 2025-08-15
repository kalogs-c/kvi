local defaults = {}

defaults.on_attach = function(_, bufnr)
	local function map(keys, func, desc, mode)
		mode = mode or "n"
		vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
	end

	local telescope_builtin = require("telescope.builtin")

	map("gd", telescope_builtin.lsp_definitions, "go to definition")
	map("gi", telescope_builtin.lsp_implementations, "go to implementations")
	map("grr", telescope_builtin.lsp_references, "go to references")
	map("<leader>ca", vim.lsp.buf.code_action, "code actions")
	map("<leader>ls", telescope_builtin.lsp_document_symbols, "document symbols")
end

defaults.capabilities = require("blink.cmp").get_lsp_capabilities()

return defaults
