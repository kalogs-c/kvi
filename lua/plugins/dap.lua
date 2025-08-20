return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
		"theHamsta/nvim-dap-virtual-text",

		-- adapters
		"leoluz/nvim-dap-go",
	},
	config = function()
		require("configs.languages.dap")
	end,
	keys = {
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
			"<leader>dso",
			function()
				require("dap").step_over()
			end,
			desc = "DEBUG - Step Over",
		},
		{
			"<leader>dsi",
			function()
				require("dap").step_into()
			end,
			desc = "DEBUG - Step Into",
		},
		{
			"<leader>?",
			function()
				require("dapui").eval()
				require("dapui").eval() -- trick to focus
			end,
			desc = "DEBUG - Evaluate expression",
		},
	},
}
