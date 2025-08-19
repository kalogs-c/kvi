(local configs (require :configs.languages.lsp.defaults))
(local languages (require :configs.languages))

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
  (local opts {:on_attach configs.on_attach
               :capabilities configs.capabilities
               :on_init configs.on_init})
  (when (= :table (type lang.lsp))
    (set server lang.lsp.name)
    (tset opts (merge-tables opts lang.lsp.opts)))
  ((. (require :lspconfig) server :setup) opts))
