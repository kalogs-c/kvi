-- [nfnl] fnl/configs/languages/blinkcmp.fnl
local opts = {keymap = {preset = "default"}, appearance = {nerd_font_variant = "mono", use_nvim_cmp_as_default = false}, completion = {documentation = {auto_show = true, auto_show_delay_ms = 200}, ghost_text = {enabled = vim.g.ai_cmp}, accept = {auto_brackets = {enabled = true}}, menu = {draw = {treesitter = {"lsp"}}}}, cmdline = {enabled = false}, sources = {default = {"lsp", "path", "snippets", "buffer"}}, fuzzy = {implementation = "lua"}, signature = {enabled = true}}
return require("blink.cmp").setup(opts)
