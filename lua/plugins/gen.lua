return {
  "David-Kunz/gen.nvim",
  cmd = "Gen",
  opts = {
    model = "deepseek-coder-v2:16b",
  },
  init = function()
    require "configs.gen"
  end,
}
