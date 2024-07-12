local configs = require "nvchad.configs.lspconfig"

local servers = require "configs.lsp.servers"

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
