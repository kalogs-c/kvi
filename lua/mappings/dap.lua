return {
	{
		"<leader>db",
		function()
			require("dap").toggle_breakpoint()
		end,
		desc = "DEBUG - Toggle breakpoint",
	},
	{
		"<leader>dc",
		function()
			require("dap").continue()
		end,
		desc = "DEBUG - Continue",
	},
	{
		"<leader>dt",
		function()
			require("dap").terminate()
		end,
		desc = "DEBUG - Terminate",
	},
	{
		"<space>?",
		function()
			require("dapui").eval()
		end,
		desc = "DEBUG - Evaluate expression",
	},
}
