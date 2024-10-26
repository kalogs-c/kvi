return {
  {
    "<leader>db",
    function()
      require('dap').toggle_breakpoint()
    end,
    desc = "DEBUG - Toggle breakpoint"
  },
  {
    "<leader>dc",
    function()
      require('dap').continue()
    end,
    desc = "DEBUG - Continue"
  },
  {
    "<space>?",
    function()
      require("dapui").eval(nil, { enter = true })
    end,
    desc = "DEBUG - Evaluate expression"
  }
}
