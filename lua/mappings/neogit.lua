local map = vim.keymap.set

local neogit = require "neogit"

map("n", "<leader>gs", neogit.open, { desc = "Git - Neogit - Open summary" })

map("n", "<leader>gd", function()
  neogit.open { "diff" }
end, { desc = "Git - Neogit - Open diff" })
