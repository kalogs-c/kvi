-- [nfnl] fnl/configs/languages/lsp.fnl
local languages = require("configs.languages")
local function on_attach(_, bufnr)
  local function map(keys, func, desc, mode)
    return vim.keymap.set((mode or "n"), keys, func, {buffer = bufnr, desc = desc})
  end
  local telescope = require("telescope.builtin")
  map("gd", telescope.lsp_definitions, "go to definition")
  map("gi", telescope.lsp_implementations, "go to implementations")
  map("grr", telescope.lsp_references, "go to references")
  map("<leader>ls", telescope.lsp_document_symbols, "document symbols")
  map("<leader>ca", vim.lsp.buf.code_action, "code actions")
  return map("<leader>q", vim.diagnostic.setloclist, "Show Diagnostics")
end
local function on_init(client, _)
  if not client.server_capabilities.semanticTokensProvider then
    local semantic = client.config.capabilities.textDocument.semanticTokens
    client.server_capabilities.semanticTokensProvider = {full = true, legend = {tokenTypes = semantic.tokenTypes, tokenModifiers = semantic.tokenModifiers}, range = true}
    return nil
  else
    return nil
  end
end
local function capabilities()
  return require("blink.cmp").get_lsp_capabilities()
end
local configs = {["on-attach"] = on_attach, ["on-init"] = on_init, capabilities = capabilities()}
local function merge_tables(t1, t2)
  local result = {}
  for k, v in pairs(t1) do
    result[k] = v
  end
  for k, v in pairs(t2) do
    result[k] = v
  end
  return result
end
for _, lang in pairs(languages) do
  local server = lang.lsp
  local opts = {on_attach = configs["on-attach"], capabilities = configs.capabilities, on_init = configs["on-init"]}
  if ("table" == type(lang.lsp)) then
    server = lang.lsp.name
    opts = merge_tables(opts, lang.lsp.opts)
  else
  end
  require("lspconfig")[server].setup(opts)
end
return vim.diagnostic.config({virtual_text = true, virtual_lines = {current_line = true}})
