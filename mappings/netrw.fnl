(local map vim.keymap.set)

(set vim.g.netrw_banner 0)
(set vim.g.netrw_browse_split 0)
(set vim.g.netrw_liststyle 3)

;; toggle netrw
(fn toggle-netrw []
  (if (= vim.bo.filetype "netrw")
      (vim.cmd "bd")
      (vim.cmd "Ex")))

(map "n" "<C-n>" toggle-netrw {:desc "toggle netrw"})
