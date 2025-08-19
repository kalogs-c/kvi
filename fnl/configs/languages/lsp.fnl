(local languages (require :configs.languages))

(fn on-attach [_ bufnr]
  (fn map [keys func desc mode]
    (vim.keymap.set (or mode :n) keys func {:buffer bufnr :desc desc}))

  (local telescope (require :telescope.builtin))
  (map :gd telescope.lsp_definitions "go to definition")
  (map :gi telescope.lsp_implementations "go to implementations")
  (map :grr telescope.lsp_references "go to references")
  (map "<leader>ls" telescope.lsp_document_symbols "document symbols")
  (map "<leader>ca" vim.lsp.buf.code_action "code actions")
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

(local configs {:on-attach on-attach
                :on-init on-init
                :capabilities (capabilities)})

(fn merge-tables [t1 t2]
  (let [result {}]
    ;; copy all fields from t1
    (each [k v (pairs t1)]
      (tset result k v))
    ;; overwrite/add fields from t2
    (each [k v (pairs t2)]
      (tset result k v))
    result))

(each [_ lang (pairs languages)]
  (var server lang.lsp)
  (var opts {:on_attach configs.on-attach
             :capabilities configs.capabilities
             :on_init configs.on-init})
  (when (= :table (type lang.lsp))
    (set server lang.lsp.name)
    (set opts (merge-tables opts lang.lsp.opts)))
  ((. (require :lspconfig) server :setup) opts))

(vim.diagnostic.config {:virtual_text true :virtual_lines {:current_line true}})
