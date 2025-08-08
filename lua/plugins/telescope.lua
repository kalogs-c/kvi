return {
	"nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false,
	dependencies = { 
    "nvim-lua/plenary.nvim"
  },
  keys = require "mappings.telescope"
}
