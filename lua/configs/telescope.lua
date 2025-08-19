-- [nfnl] fnl/configs/telescope.fnl
local opts = {defaults = {prompt_prefix = " \239\128\130  ", selection_caret = "   ", entry_prefix = " ", sorting_strategy = "ascending", layout_config = {horizontal = {prompt_position = "top", preview_width = 0.55}, width = 0.87, height = 0.8}}}
return require("telescope").setup(opts)
