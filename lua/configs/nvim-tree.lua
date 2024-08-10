local config = {
  git = {
    ignore = false,
    enable = true,
  },

  filters = {
    custom = { ".git$" },
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return config
