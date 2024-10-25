vim.g.mapleader = " "
vim.o.cursorlineopt = "both"
vim.o.relativenumber = true

vim.schedule(function()
	require("mappings")
end)

require("options")
require("configs.lazy")
