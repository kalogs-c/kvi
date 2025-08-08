return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  version = "1.*",
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = require "configs.languages.blinkcmp",
  opts_extend = {
    "sources.compat",
    "sources.default",
    "sources.completion.enabled_providers",
  },
}
