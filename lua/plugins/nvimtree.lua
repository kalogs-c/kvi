return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	cmd = { "NvimTreeToggle" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({})
	end,
}
