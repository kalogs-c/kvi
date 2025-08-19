;; Basic settings
(vim.loader.enable)
(set vim.g.mapleader " ")
(set vim.g.maplocalleader " ")
(set vim.opt.confirm true)
(set vim.opt.wrap false)
(set vim.opt.mouse "a")
(vim.opt.iskeyword:append "-")

;; Numbers
(set vim.opt.number true)
(set vim.opt.relativenumber true)
(set vim.opt.numberwidth 2)

;; Scroll
(set vim.opt.scrolloff 10)
(set vim.opt.sidescrolloff 8)

;; Indentation
(set vim.opt.tabstop 2)
(set vim.opt.shiftwidth 2)
(set vim.opt.softtabstop 2)
(set vim.opt.expandtab true)
(set vim.opt.smartindent true)

;; Undo
(set vim.opt.undofile true)
(set vim.opt.undodir (.. (os.getenv "HOME") "/.vim/undodir"))

;; Search settings
(set vim.opt.ignorecase true)
(set vim.opt.smartcase true)

;; Visual settings
(set vim.opt.termguicolors true)
(set vim.opt.signcolumn "yes")
(set vim.opt.cmdheight 0)
(set vim.opt.showmode false)
(set vim.opt.lazyredraw true)
(set vim.opt.synmaxcol 300)
(set vim.opt.fillchars {:eob " "})

;; Cursor
(set vim.opt.guicursor ["n-v-c:block"
                        ;; Normal, Visual, Command-line
                        "i-ci:ver25"
                        ;; Insert, Command-line Insert, Visual-exclusive
                        "r-cr:hor20"
                        ;; Replace, Command-line Replace
                        "o:hor50"
                        ;; Operator-pending
                        "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
                        ;; All modes: blinking & highlight groups
                        "sm:block-blinkwait175-blinkoff150-blinkon175"
                        ;; Showmatch mode
                        ])

;; Behavior settings

;; Folding settings
(set vim.opt.foldmethod "expr")
(set vim.wo.foldexpr "v:lua.vim.treesitter.foldexpr()")
(set vim.opt.foldlevel 99)

;; Split behavior
(set vim.opt.splitbelow true)
(set vim.opt.splitright true)

;; Command-line completion
(set vim.opt.wildmenu true)
(set vim.opt.wildmode "longest:full,full")

;; Remove statusline background
(vim.api.nvim_set_hl 0 "StatusLine" {:bg "none"})
(vim.api.nvim_set_hl 0 "StatusLineNC" {:bg "none"})

;; Better diff options
(vim.opt.diffopt:append "linematch:60")

;; Performance improvements
(set vim.opt.redrawtime 10000)
(set vim.opt.maxmempattern 20000)

;; Disable some default providers
(set vim.g.loaded_node_provider 0)
(set vim.g.loaded_python3_provider 0)
(set vim.g.loaded_perl_provider 0)
(set vim.g.loaded_ruby_provider 0)

;; Clipboard
(vim.opt.clipboard:append "unnamedplus")

(fn is-wsl []
  (let [wsl-env (vim.fn.getenv "WSLENV")
        uname (vim.fn.system "uname -r")]
    (or (not= wsl-env vim.NIL) (uname:match "WSL"))))

(when (is-wsl)
  (set vim.g.clipboard {:name "WslClipboard"
                        :copy {:+ "clip.exe" :* "clip.exe"}
                        :paste {:+ "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"
                                :* "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"}
                        "cache_enabled" 0}))
