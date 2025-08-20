local autocmd = vim.api.nvim_create_autocmd

local function augroup(group_name)
	return vim.api.nvim_create_augroup(group_name, {})
end

-- update lazy plugins
autocmd("VimEnter", {
	callback = function()
		require("lazy").update({ show = false })
	end,
})

-- Highlight text on yank
autocmd("TextYankPost", {
	group = augroup("HighlightOnYank"),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Return to last edit position when opening files
autocmd("BufReadPost", {
	group = augroup("ReturnToLastEditPositionWhenOpeningFiles"),
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Auto-resize splits when window is resized
autocmd("VimResized", {
	group = augroup("AutoResizeSplits"),
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})
