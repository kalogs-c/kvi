local config = {
	adapters = {
		require("neotest-elixir"),
		require("neotest-go"),

		require("neotest-jest")({
			jestCommand = "pnpm test --",
			jestConfigFile = "jest.config.js",
			cwd = function(_)
				return vim.fn.getcwd()
			end,
		}),
	},
}

require("neotest").setup(config)
