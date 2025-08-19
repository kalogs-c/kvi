-- [nfnl] fnl/configs/languages/lsp/defaults.fnl
local function on_attach(client, bufnr)
  local function map(keys, func, desc, mode)
    return vim.keymap.set((mode or "n"), keys, func, {buffer = bufnr, desc = desc})
  end
  local telescope_builtin = require("telescope.builtin")
  map("gd", telescope_builtin.lsp_definitions, "go to definition")
  map("gi", telescope_builtin.lsp_implementations, "go to implementations")
  map("grr", telescope_builtin.lsp_references, "go to references")
  map("<leader>ca", vim.lsp.buf.code_action, "code actions")
  map("<leader>ls", telescope_builtin.lsp_document_symbols, "document symbols")
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
return {on_attach = on_attach, on_init = on_init, capabilities = capabilities()}
