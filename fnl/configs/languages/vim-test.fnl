(set (. vim.g :test#custom_strategies)
     {:kvi (fn [cmd]
             ;; Open a new vertical split for the terminal
             (vim.cmd.vnew)
             ;; Run the test command
             (vim.fn.jobstart cmd {:term true})
             ;; Set buffer-local variable so that terminal doesn't enter insert mode
             (let [bufnr (vim.api.nvim_get_current_buf)]
               (vim.api.nvim_buf_set_var bufnr "is_vimtest_terminal" true))
             ;; Make sure we are not in insert mode
             (vim.cmd.stopinsert))})

(set (. vim.g :test#strategy) "kvi")
