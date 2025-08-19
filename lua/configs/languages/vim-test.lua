-- [nfnl] fnl/configs/languages/vim-test.fnl
local function _1_(cmd)
  vim.cmd.vnew()
  vim.fn.jobstart(cmd, {term = true})
  do
    local bufnr = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_var(bufnr, "is_vimtest_terminal", true)
  end
  return vim.cmd.stopinsert()
end
vim.g["test#custom_strategies"] = {kvi = _1_}
vim.g["test#strategy"] = "kvi"
return nil
