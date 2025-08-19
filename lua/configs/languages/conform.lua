-- [nfnl] fnl/configs/languages/conform.fnl
local formatters = {}
local languages = require("configs.languages")
for lang, opts in pairs(languages) do
  if ("string" == type(opts.fmt)) then
    formatters[lang] = {opts.fmt}
  else
    formatters[lang] = (opts.fmt or {})
  end
end
local opts = {default_format_opts = {timeout_ms = 3000, lsp_format = "fallback", async = false, quiet = false}, formatters_by_ft = formatters, format_on_save = {timeout_ms = 500, lsp_fallback = true}, notify_on_error = false}
return require("conform").setup(opts)
