local dap = require("dap")
local dapui = require("dapui")

require("dapui").setup({
	elements = {
		{ id = "repl", size = 1 },
	},
	position = "bottom",
	size = 15,
})

-- Adapters
require("dap-go").setup()

dap.listeners.before.attach.dapui_config = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open
dap.listeners.before.event_terminated.dapui_config = dapui.close
dap.listeners.before.event_exited.dapui_config = dapui.close
