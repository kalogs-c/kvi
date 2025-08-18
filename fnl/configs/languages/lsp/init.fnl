(local configs (require :configs.languages.lsp.defaults))
(local languages (require :configs.languages))

(each [_ lang (pairs languages)]
  (var server lang.lsp)
  (local opts {:on_attach configs.on_attach
               :capabilities configs.capabilities
               :on_init configs.on_init})

  (when (= :table (type lang.lsp))
    (set server lang.lsp.name)
    (tset opts :settings lang.lsp.opts))

  ((. (require :lspconfig) server :setup) opts))
