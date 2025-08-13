local configs = require("configs.languages.lsp.defaults")
local languages = require("configs.languages")

for _, lang in pairs(languages) do
	local server = lang.lsp
	local opts = {
		on_attach = configs.on_attach,
		capabilities = configs.capabilities,
		on_init = configs.on_init,
	}

	if type(lang.lsp) == "table" then
		server = lang.lsp.name
		opts.settings = lang.lsp.opts
	end

	require("lspconfig")[server].setup(opts)
end
