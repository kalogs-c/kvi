local dap = require("dap")
local ui = require("dapui")

require("dapui").setup()
require("dap-go").setup()
require("nvim-dap-virtual-text").setup()

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

dap.listeners.before.attach.dapui_config = function()
	ui.open()
end

dap.listeners.before.launch.dapui_config = function()
	ui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end
