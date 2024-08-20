return {
  -- Nvim Tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree",
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
  },

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

  -- leap
  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  -- test
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",

      -- adapters
      "jfpedroza/neotest-elixir",
    },
    config = function()
      require "configs.neotest"
    end,
  },

  -- wildmenu
  {
    "gelguy/wilder.nvim",
    lazy = false,
    config = function()
      require "configs.wilder"
    end,
  },

  -- Diagnostics
  {
    "folke/trouble.nvim",
    opts = {
      warn_no_results = false,
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>q",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Trouble Diagnostics",
      },
    },
  },
}
