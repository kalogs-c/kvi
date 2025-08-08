return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cmd = "ConformInfo",
	opts = require "configs.languages.conform",
  keys = require "mappings.conform",
}
