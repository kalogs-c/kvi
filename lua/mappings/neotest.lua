return {
  {
    "<leader>ts",
    function()
      require("neotest").summary.toggle()
    end,
    desc = "TEST - Toggle summary"
  },
  {
    "<leader>trn",
    function()
      require("neotest").run.run()
    end,
    desc = "TEST - Run nearest"
  },
  {
    "<leader>trf",
    function()
      require("neotest").run.run(vim.fn.expand("%"))
    end,
    desc = "TEST - Run file tests"
  },
  {
    "<leader>trs",
    function()
      require("neotest").run.stop()
    end,
    desc = "TEST - Stop running test"
  },
  {
    "<leader>to",
    function()
      require("neotest").output.open({ enter = true })
    end,
    desc = "TEST - Open test output"
  },
  {
    "<leader>tfn",
    function()
      require("neotest").jump.next({ status = "failed" })
    end,
    desc = "TEST - Jump to next failed test"
  },
  {
    "<leader>tfp",
    function()
      require("neotest").jump.prev({ status = "failed" })
    end,
    desc = "TEST - Jump to previous failed test"
  },
}
