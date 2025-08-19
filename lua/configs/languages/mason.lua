-- [nfnl] fnl/configs/languages/mason.fnl
local mason = {ui = {icons = {package_pending = "\239\128\153 ", package_installed = "\239\129\152 ", package_uninstalled = "\239\134\146 "}}, max_concurrent_installers = 10}
local mason_tools = {auto_update = true, run_on_start = true, start_delay = 3000, ensure_installed = {}}
local languages = require("configs.languages")
for _, lang in pairs(languages) do
  if (type(lang.tools) == "string") then
    table.insert(mason_tools.ensure_installed, lang.tools)
  else
    for _0, tool in pairs((lang.tools or {})) do
      table.insert(mason_tools.ensure_installed, tool)
    end
  end
end
require("mason").setup(mason)
return require("mason-tool-installer").setup(mason_tools)
