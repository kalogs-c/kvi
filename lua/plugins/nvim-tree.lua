return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<C-n>", "<cmd>NvimTreeToggle<CR>" },
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
				custom = { ".git$" },
			},
			disable_netrw = true,
			hijack_cursor = true,
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
			},
			view = {
				width = 40,
				preserve_window_proportions = true,
			},
			renderer = {
				root_folder_label = false,
				highlight_git = true,
				indent_markers = { enable = true },
				icons = {
					glyphs = {
						default = "¾░êÜ",
						folder = {
							default = "¯Ü¡",
							empty = "¯¬â",
							empty_open = "¯»ƒ",
							open = "¯½Â",
							symlink = "¯½¡",
						},
						git = { unmerged = "¯½¥" },
					},
					show = {
						git = true,
					},
				},
			},
			git = {
				ignore = false,
				enable = true,
			},
		})
	end,
}
