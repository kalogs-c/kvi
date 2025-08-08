return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	cmd = { "NvimTreeToggle" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = require("configs.nvimtree"),
}
