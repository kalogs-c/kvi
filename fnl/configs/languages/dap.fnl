(local dap (require :dap))
(local dapui (require :dapui))

(dapui.setup {:layouts [{:elements [{:id "repl" :size 1}]
                         :position "bottom"
                         :size 15}]})

(let [dap-go (require :dap-go)]
  (dap-go.setup))

(set dap.listeners.before.attach.dapui_config dapui.open)
(set dap.listeners.before.launch.dapui_config dapui.open)
(set dap.listeners.before.event_terminated.dapui_config dapui.close)
(set dap.listeners.before.event_exited.dapui_config dapui.close)

(vim.fn.sign_define "DapBreakpoint" {:text "󰀚"})
