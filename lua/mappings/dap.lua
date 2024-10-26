local map = vim.keymap.set
local dap = require("dap")

map("n", "<space>db", dap.toggle_breakpoint, { desc = "Debug - Toggle breakpoint" })
map("n", "<space>dgb", dap.run_to_cursor, { desc = "Debug - Run to cursor" })

-- Eval var under cursor
map("n", "<space>d?", function()
	require("dapui").eval(nil, { enter = true })
end, { desc = "Debug - Eval variable under cursor" })

map("n", "<F1>", dap.continue)
map("n", "<F2>", dap.step_into)
map("n", "<F3>", dap.step_over)
map("n", "<F4>", dap.step_out)
map("n", "<F5>", dap.step_back)
map("n", "<F13>", dap.restart)
