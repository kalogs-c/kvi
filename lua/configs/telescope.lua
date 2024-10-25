return {
	defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    sorting_strategy = "ascending",
    mappings = {
      n = { ["q"] = require("telescope.actions").close },
    },
  },
}
