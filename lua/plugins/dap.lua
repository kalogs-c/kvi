return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
    "williamboman/mason.nvim",

    -- adapters
    "leoluz/nvim-dap-go",
  },
  config = function()
    require("configs.dap")
  end,
  keys = require "mappings.nvimdap"
}
