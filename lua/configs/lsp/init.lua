local configs = require("configs.lsp.defaults")
local servers = require("configs.lsp.servers")

for name, opts in pairs(servers) do
	opts.on_attach = opts.on_attach or configs.on_attach
	opts.capabilities = opts.capabilities or configs.capabilities
	opts.on_init = opts.on_init or configs.on_init

	require("lspconfig")[name].setup(opts)
end
