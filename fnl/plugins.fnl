(vim.pack.add [;; UI
               {:src "https://github.com/folke/which-key.nvim"}
               {:src "https://github.com/olimorris/onedarkpro.nvim"}
               {:src "https://github.com/kyazdani42/nvim-web-devicons"}
               {:src "https://github.com/nvim-lualine/lualine.nvim"}
               ;; Telescope
               {:src "https://github.com/nvim-lua/plenary.nvim"}
               {:src "https://github.com/nvim-telescope/telescope.nvim"}
               ;; Languages
               {:src "https://github.com/saghen/blink.cmp"}
               {:src "https://github.com/neovim/nvim-lspconfig"}
               {:src "https://github.com/stevearc/conform.nvim"}
               {:src "https://github.com/nvim-treesitter/nvim-treesitter"}
               {:src "https://github.com/Olical/conjure"}
               ;; Mason
               {:src "https://github.com/mason-org/mason.nvim"}
               {:src "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"}
               ;; Test
               {:src "https://github.com/vim-test/vim-test"}
               ;; Debug
               {:src "https://github.com/rcarriga/nvim-dap-ui"}
               {:src "https://github.com/nvim-neotest/nvim-nio"}
               {:src "https://github.com/mfussenegger/nvim-dap"}
               ;; DAP Adapters
               {:src "https://github.com/leoluz/nvim-dap-go"}
               ;; Mini
               {:src "https://github.com/echasnovski/mini.files"}
               {:src "https://github.com/echasnovski/mini.pairs"}
               {:src "https://github.com/echasnovski/mini.surround"}
               {:src "https://github.com/echasnovski/mini.splitjoin"}])

;; UI
(require :configs.lualine)
(require :configs.telescope)

;; Languages
(require :configs.languages.lsp)
(require :configs.languages.mason)
(require :configs.languages.conform)
(require :configs.languages.blinkcmp)
(require :configs.languages.treesitter)
(require :configs.languages.vim-test)

;; Debug / DAP
(require :configs.languages.dap)

;; Mini
(require :configs.mini)
