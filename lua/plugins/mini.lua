local plugins = {
	"pairs",
	"files",
	"surround",
	"cursorword",
	"indentscope",
	splitjoin = { mappings = { toggle = "fS" } },
}

local function startsWith(str, prefix)
	return string.sub(str, 1, #prefix) == prefix
end

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

	vim.keymap.set("n", "<C-n>", function()
		local buf = vim.api.nvim_buf_get_name(0)
		if #buf > 0 and not startsWith(buf, "/") then
			MiniFiles.close()
		else
			MiniFiles.open(buf, false)
		end
	end)
end

return {
	"echasnovski/mini.nvim",
	version = false,
	config = setup_plugins,
}
