-- [nfnl] fnl/configs/mini.fnl
local files = require("mini.files")
local pairs = require("mini.pairs")
local surround = require("mini.surround")
local splitjoin = require("mini.splitjoin")
files.setup()
pairs.setup()
surround.setup()
return splitjoin.setup({mappings = {toggle = "fS"}})
