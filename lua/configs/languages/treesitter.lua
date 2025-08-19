-- [nfnl] fnl/configs/languages/treesitter.fnl
local opts = {auto_install = true, highlight = {enable = true, use_languagetree = true}, indent = {enable = true}}
local ts = require("nvim-treesitter.configs")
return ts.setup(opts)
