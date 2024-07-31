return {
  -- formating
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lsp"
    end,
  },

  -- package manager
  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  -- AI
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}
