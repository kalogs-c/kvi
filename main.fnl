(set vim.g.mapleader " ")
(set vim.o.cursorlineopt "both")
(set vim.o.relativenumber true)

(vim.schedule 
  (fn [] 
    (require :mappings)))

(require :options)
(require :lazy-setup)
