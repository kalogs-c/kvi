(local formatters {})
(local languages (require :configs.languages))

(each [lang opts (pairs languages)]
  (if (= :string (type opts.fmt))
      (tset formatters lang [opts.fmt])
      (tset formatters lang (or opts.fmt []))))

(local opts
  {:notify_on_error false
   :default_format_opts {:timeout_ms 3000
                        :async false    ;; not recommended to change
                        :quiet false    ;; not recommended to change
                        :lsp_format "fallback"} ;; not recommended to change
   :formatters_by_ft formatters
   :format_on_save {:timeout_ms 500
                    :lsp_fallback true}})

((. (require :conform) :setup) opts)
