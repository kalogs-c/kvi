vim.g.mapleader = " "
vim.o.cursorlineopt = "both"
vim.o.relativenumber = true

vim.schedule(function()
	require("mappings")
end)

require("options")
require("configs.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("lazy").update({ show = false })
	end,
})
