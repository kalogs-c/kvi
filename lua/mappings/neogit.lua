return {
  {
    "<leader>gs",
    function()
      require("neogit").open()
    end,
    desc = "Git - Open summary"
  },
  {
    "<leader>gd",
    function()
      require("neogit").open({ "diff" })
    end,
    desc = "Git - Open diff"
  },
}
