-- [nfnl] fnl/configs/languages/lsp/init.fnl
local configs = require("configs.languages.lsp.defaults")
local languages = require("configs.languages")
for _, lang in pairs(languages) do
  local server = lang.lsp
  local opts = {on_attach = configs.on_attach, capabilities = configs.capabilities, on_init = configs.on_init}
  if ("table" == type(lang.lsp)) then
    server = lang.lsp.name
    opts["settings"] = lang.lsp.opts
  else
  end
  require("lspconfig")[server].setup(opts)
end
return nil
