-- [nfnl] fnl/configs/languages/lsp/defaults.fnl
local function on_attach()
  local function _1_(_, bufnr)
    local function map(keys, func, desc, mode)
      return vim.keymap.set((mode or "n"), keys, func, {buffer = bufnr, desc = desc})
    end
    local telescope_builtin = require("telescope.builtin")
    map("gd", telescope_builtin.lsp_definitions, "go to definition")
    map("gi", telescope_builtin.lsp_implementations, "go to implementations")
    map("grr", telescope_builtin.lsp_references, "go to references")
    map("<leader>ca", vim.lsp.buf.code_action, "code actions")
    return map("<leader>ls", telescope_builtin.lsp_document_symbols, "document symbols")
  end
  return _1_
end
local function capabilities()
  return require("blink.cmp").get_lsp_capabilities()
end
return {on_attach = on_attach, capabilities = capabilities()}
