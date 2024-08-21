return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",

    -- adapters
    "jfpedroza/neotest-elixir",
    "nvim-neotest/neotest-go",
    "nvim-neotest/neotest-jest",
  },
  config = function()
    require "configs.neotest"
  end,
}
