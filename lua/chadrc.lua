-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_dark",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  cmp = {
    style = "atom_colored",
  },
}

return M
