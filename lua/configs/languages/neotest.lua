-- [nfnl] fnl/configs/languages/neotest.fnl
local opts = {adapters = {require("neotest-go")}}
return require("neotest").setup(opts)
