local plugins = {
	"pairs",
	"surround",
	"cursorword",
	"indentscope",
	splitjoin = { mappings = { toggle = "fS" } },
}

local function setup_plugins()
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
