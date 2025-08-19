(local mason
  {:ui {:icons {:package_pending " "
                :package_installed " "
                :package_uninstalled " "}}
   :max_concurrent_installers 10})

(local mason-lsp
  {:automatic_installation true
   :automatic_enable false})

(local mason-tools
  {:auto_update true
   :run_on_start true
   :start_delay 3000
   :ensure_installed []})

(local languages (require :configs.languages))

(each [_ lang (pairs languages)]
  (if (= (type lang.tools) :string)
      (table.insert mason-tools.ensure_installed lang.tools)
      (each [_ tool (pairs (or lang.tools []))]
        (table.insert mason-tools.ensure_installed tool))))

((. (require :mason) :setup) mason)
((. (require :mason-lspconfig) :setup) mason-lsp)
((. (require :mason-tool-installer) :setup) mason-tools)
