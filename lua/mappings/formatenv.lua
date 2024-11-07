local map = vim.keymap.set

map(
	"n",
	"<leader>fer",
	[[<cmd>%s/- name: \(.*\)\n.*value: \(.*\)/\1=\2<CR>]],
	{ desc = "Format ENV - Google Cloud Run" }
)
