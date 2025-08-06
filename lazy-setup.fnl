(local lazypath 
 (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))

(local provider (or vim.uv vim.loop))
(when (not (provider.fs_stat lazypath))
  (local lazyrepo "https://github.com/folke/lazy.nvim.git")
  (local out (vim.fn.system ["git" "clone" "--filter=blob:none" "--branch=stable" lazyrepo lazypath]))

  (when (not= vim.v.shell.error 0)
    (vim.api.nvim_echo
      [ ["Failed to clone lazy.nvim:\n" "ErrorMsg"]
        [out "WarningMsg"]
        ["\nPress any key to exit..."] ]
      true
      {})

    (vim.fn.getchar)
    (os.exit 1)))

(vim.opt.rtp:prepend lazypath)

(local lazy (require :lazy))
(lazy.setup 
  {:spec {:import "plugins"}
   :checker {:enabled true}})
