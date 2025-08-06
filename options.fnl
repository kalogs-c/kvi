(set vim.g.mapleader " ")
(set vim.o.relativenumber true)
(set vim.o.confirm true)

;; encoding
(set vim.o.encoding "utf-8")
(set vim.o.fileencoding "utf-8")

;; laststatus
(set vim.o.laststatus 3)

;; clipboard and cursorline
(set vim.o.clipboard "unnamedplus")
(set vim.o.cursorline true)
(set vim.o.cursorlineopt "both")

;; indent
(set vim.o.expandtab true)
(set vim.o.shiftwidth 2)
(set vim.o.smartindent true)
(set vim.o.tabstop 2)
(set vim.o.softtabstop 2)

(set vim.opt.fillchars {:eob " "})
(set vim.o.ignorecase true)
(set vim.o.smartcase true)
(set vim.o.mouse "a")

;; numbers
(set vim.o.number true)
(set vim.o.numberwidth 2)

(set vim.o.signcolumn "yes")
(set vim.o.splitbelow true)
(set vim.o.splitright true)
(set vim.o.timeoutlen 400)
(set vim.o.undofile true)
(set vim.o.scrolloff 10)
(set vim.o.wrap false)

;; interval for writing swap file to disk, also used by gitsigns
(set vim.o.updatetime 250)

;; disable some default providers
(set vim.g.loaded_node_provider 0)
(set vim.g.loaded_python3_provider 0)
(set vim.g.loaded_perl_provider 0)
(set vim.g.loaded_ruby_provider 0)

;; add binaries installed by mason.nvim to path
(set vim.env.PATH 
  (.. 
    (table.concat [(vim.fn.stdpath "data") "mason" "bin"] "/")
    ":"
    vim.env.PATH))

;; clipboard on wsl2
(fn is-wsl []
  (let [wsl-env (vim.fn.getenv "WSLENV")
        uname (vim.fn.system "uname -r")]
    (or (not= wsl-env vim.NIL) 
        (uname:match "WSL"))))

(fn set-wsl-clipboard [copy-cmd paste-cmd]
  (set vim.g.clipboard 
		  {:name "WslClipboard"
       :copy {:+ copy-cmd
              :* copy-cmd}
       :paste {:+ paste-cmd
               :* paste-cmd}
       :cache_enabled 0}))

(when (is-wsl)
  (set-wsl-clipboard 
    "clip.exe"
    "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"))
