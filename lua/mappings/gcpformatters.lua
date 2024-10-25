local map = vim.keymap.set

map(
	"n",
	"<leader>fer",
	":%s/.*name:\\s// | :%s/\\n.*value:\\s/=/ <cr>",
	{ desc = "Format env - from google cloud run" }
)

map(
	"n",
	"<leader>fef",
	":%s/\\v(^[A-Z].*)\\n\\v(.*)/\\1=\\2 <cr>",
	{ desc = "Format env - from google cloud functions" }
)
