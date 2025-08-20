local plugins = {
	"pairs",
	"cursorword",
	"indentscope",
	"surround",
	splitjoin = { mappings = { toggle = "fS" } },
	files = { mappings = { close = "<C-n>" } },
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

	vim.keymap.set("n", "<C-n>", MiniFiles.open)
end

return {
	"echasnovski/mini.nvim",
	version = false,
	config = setup_plugins,
}
