-- [nfnl] fnl/configs/languages/neotest.fnl
local opts = {adapters = {require("neotest-go"), require("neotest-rust")}}
return require("neotest").setup(opts)
