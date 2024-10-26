local dap = require("dap")
local dapui = require("dapui")

require("dapui").setup()
require("dap-go").setup()
require("nvim-dap-virtual-text").setup()

dap.listeners.before.attach.dapui_config = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open
dap.listeners.before.event_terminated.dapui_config = dapui.close
dap.listeners.before.event_exited.dapui_config = dapui.close

local elixir_ls_debugger = vim.fn.exepath("elixir-ls-debugger")
if elixir_ls_debugger ~= "" then
	dap.adapters.mix_task = {
		type = "executable",
		command = elixir_ls_debugger,
	}

	dap.configurations.elixir = {
		{
			type = "mix_task",
			name = "phoenix server",
			task = "phx.server",
			request = "launch",
			projectDir = "${workspaceFolder}",
			exitAfterTaskReturns = false,
			debugAutoInterpretAllModules = false,
		},
	}
end
