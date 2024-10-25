local map = vim.keymap.set

local neotest = require("neotest")

map("n", "<leader>trn", neotest.run.run, { desc = "TEST - Run nearest" })

map("n", "<leader>trf", function()
	neotest.run.run(vim.fn.expand("%"))
end, { desc = "TEST - Run file tests" })

map("n", "<leader>trs", neotest.run.stop, { desc = "TEST - Stop running test" })

map("n", "<leader>to", function()
	neotest.output.open({ enter = true })
end, { desc = "TEST - Open test output" })

map("n", "<leader>ts", neotest.summary.toggle, { desc = "TEST - Toggle summary" })

map("n", "<leader>tfn", function()
	neotest.jump.next({ status = "failed" })
end, { desc = "TEST - Jump to next failed test" })

map("n", "<leader>tfp", function()
	neotest.jump.prev({ status = "failed" })
end, { desc = "TEST - Jump to previous failed test" })
