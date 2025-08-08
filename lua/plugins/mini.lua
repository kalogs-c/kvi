local plugins = {
	"ai",
	"move",
	"pairs",
	splitjoin = { mappings = { toggle = "fS" } },
	"cursorword",
	"indentscope",
}

function setup_plugins()
	for key, value in pairs(plugins) do
		local module = value
		local opts = {}

		if type(key) ~= "number" then
			module = key
			opts = value
		end

		require("mini." .. module).setup(opts)
	end
end

return {
	"echasnovski/mini.nvim",
	version = false,
	config = setup_plugins,
}
