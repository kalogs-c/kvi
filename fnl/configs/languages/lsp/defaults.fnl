(fn on-attach []
      (fn [_ bufnr]
        (fn map [keys func desc mode]
          (vim.keymap.set (or mode :n) keys func {:buffer bufnr :desc desc}))

        (local telescope-builtin (require :telescope.builtin))

        (map :gd telescope-builtin.lsp_definitions "go to definition")
        (map :gi telescope-builtin.lsp_implementations "go to implementations")
        (map :grr telescope-builtin.lsp_references "go to references")
        (map "<leader>ca" vim.lsp.buf.code_action "code actions")
        (map "<leader>ls" telescope-builtin.lsp_document_symbols "document symbols")))

(fn capabilities []
     ((. (require :blink.cmp) :get_lsp_capabilities)))

{:on_attach on-attach
 :capabilities (capabilities)}
