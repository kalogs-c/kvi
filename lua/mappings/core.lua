local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<ESC>", "<cmd>noh<CR><ESC>")

-- move on insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- switch window
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- buffers
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "next buffer" })
map("n", "<S-Tab>", "<cmd>bprev<CR>", { desc = "previous buffer" })
map("n", "<leader>x", "<cmd>bdelete!<CR>", { desc = "close buffer" })

-- line numbers
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- indenting
map({"n", "v"}, ">", ">gv")
map({"n", "v"}, "<", "<gv")

-- save
map({"i", "x", "n", "s"}, "<C-s>", "<cmd>w<cr><esc>", { desc = "save File" })

-- diagnostics
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "show diagnostics" })
