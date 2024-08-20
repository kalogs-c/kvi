local config = {}

config.adapters = {
  require("neotest-elixir"),
}

require("neotest").setup(config)
