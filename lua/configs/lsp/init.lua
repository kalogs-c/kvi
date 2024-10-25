local configs = require("configs.lsp.defaults")
local servers = require("configs.lsp.servers")

for name, opts in pairs(servers) do
	opts.on_attach = configs.on_attach
	opts.capabilities = configs.capabilities
	opts.on_init = configs.on_init

	require("lspconfig")[name].setup(opts)
end
