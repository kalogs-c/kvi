(fn on-attach [_ bufnr]
  (fn map [keys func desc mode]
    (vim.keymap.set (or mode :n) keys func {:buffer bufnr :desc desc}))

  (local telescope-builtin (require :telescope.builtin))
  (map :gd telescope-builtin.lsp_definitions "go to definition")
  (map :gi telescope-builtin.lsp_implementations "go to implementations")
  (map :grr telescope-builtin.lsp_references "go to references")
  (map "<leader>ca" vim.lsp.buf.code_action "code actions")
  (map "<leader>ls" telescope-builtin.lsp_document_symbols "document symbols")
  (map "<leader>q" vim.diagnostic.setloclist "Show Diagnostics"))

(fn on-init [client _]
  (when (not client.server_capabilities.semanticTokensProvider)
    (let [semantic client.config.capabilities.textDocument.semanticTokens]
      (set client.server_capabilities.semanticTokensProvider
           {:full true
            :legend {:tokenTypes semantic.tokenTypes
                     :tokenModifiers semantic.tokenModifiers}
            :range true}))))

(fn capabilities []
  ((. (require :blink.cmp) :get_lsp_capabilities)))

{:on_attach on-attach :on_init on-init :capabilities (capabilities)}
