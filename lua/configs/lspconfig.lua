-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
local configs = require("nvchad.configs.lspconfig")

local servers = {
	-- Elixir
	elixirls = {
		cmd = { vim.fn.expand("$HOME/") .. "/.local/share/nvim/mason/bin/elixir-ls" },
	},

	-- Go
	gopls = {},
}

for name, opts in pairs(servers) do
	opts.on_attach = configs.on_attach
	opts.capabilities = configs.capabilities
	opts.on_init = configs.on_init

	lspconfig[name].setup(opts)
end
