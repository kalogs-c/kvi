return {
  "ggandor/leap.nvim",
  event = "BufEnter",
  dependencies = {
    "tpope/vim-repeat",
  },
  config = function()
    require("leap").add_default_mappings()
  end,
}
