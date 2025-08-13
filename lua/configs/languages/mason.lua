local mason = {
	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},
	max_concurrent_installers = 10,
}

local mason_lsp = {
	ensure_installed = {},
	automatic_installation = true,
	automatic_enable = false,
}

local mason_tools = {
	auto_update = true,
	run_on_start = true,
	start_delay = 3000,
	ensure_installed = {},
}

local languages = require("configs.languages")
for _, lang in pairs(languages) do
	local server = lang.lsp
	if type(lang.lsp) == "table" then
		server = lang.lsp.name
	end

	table.insert(mason_lsp.ensure_installed, server)

	if type(lang.tools) == "string" then
		table.insert(mason_tools.ensure_installed, lang.tools)
	else
		for _, tool in pairs(lang.tools or {}) do
			table.insert(mason_tools.ensure_installed, tool)
		end
	end
end

require("mason").setup(mason)
require("mason-lspconfig").setup(mason_lsp)
require("mason-tool-installer").setup(mason_tools)
