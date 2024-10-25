-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
	statusline = {
		theme = "minimal",
	},

	cmp = {
		format_colors = {
			tailwind = false,
			icon = "󱓻",
		},
	},

	telescope = { style = "bordered" },

	tabufline = {
		enabled = true,
		lazyload = true,
		order = { "treeOffset", "buffers", "tabs", "btns" },
		modules = nil,
	},
}

M.base46 = {
	theme = "catppuccin",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.colorify = {
	enabled = true,
	mode = "virtual", -- fg, bg, virtual
	virt_text = "󱓻 ",
	highlight = { hex = true, lspvars = true },
}

M.term = {
	winopts = { number = false, relativenumber = false },
	sizes = { sp = 0.4, vsp = 0.4, ["bo sp"] = 0.5, ["bo vsp"] = 0.5 },
	float = {
		row = 0.3,
		col = 0.25,
		width = 0.5,
		height = 0.85,
		border = "single",
	},
}

return M
