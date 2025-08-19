-- [nfnl] fnl/configs/languages/dap.fnl
local dap = require("dap")
local dapui = require("dapui")
dapui.setup({layouts = {{elements = {{id = "repl", size = 1}}, position = "bottom", size = 15}}})
do
  local dap_go = require("dap-go")
  dap_go.setup()
end
dap.listeners.before.attach.dapui_config = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open
dap.listeners.before.event_terminated.dapui_config = dapui.close
dap.listeners.before.event_exited.dapui_config = dapui.close
return vim.fn.sign_define("DapBreakpoint", {text = "\243\176\128\154"})
