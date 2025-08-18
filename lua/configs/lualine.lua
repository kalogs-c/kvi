-- [nfnl] fnl/configs/lualine.fnl
local mode_map = {NORMAL = "N", ["O-PENDING"] = "N?", INSERT = "I", VISUAL = "V", ["V-BLOCK"] = "VB", ["V-LINE"] = "VL", ["V-REPLACE"] = "VR", REPLACE = "R", COMMAND = "!", SHELL = "SH", TERMINAL = "T", EX = "X", ["S-BLOCK"] = "SB", ["S-LINE"] = "SL", SELECT = "S", CONFIRM = "Y?", MORE = "M"}
local opts
local function _1_(mode)
  return (mode_map[mode] or mode)
end
opts = {options = {component_separators = "", section_separators = ""}, sections = {lualine_a = {{"mode", fmt = _1_}}, lualine_b = {{"buffers", symbols = {alternate_file = ""}, hide_filename_extension = true}}, lualine_c = {}, lualine_x = {"searchcount"}, lualine_y = {{"branch", icon = "On"}}, lualine_z = {}}}
return require("lualine").setup(opts)
