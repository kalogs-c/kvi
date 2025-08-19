-- [nfnl] fnl/autocmds.fnl
local autocmd = vim.api.nvim_create_autocmd
local function augroup(group_name)
  return vim.api.nvim_create_augroup(group_name, {})
end
local function _1_()
  return vim.highlight.on_yank()
end
autocmd("TextYankPost", {group = augroup("HighlightOnYank"), callback = _1_})
local function return_last_position()
  local mark = vim.api.nvim_buf_get_mark(0, "\"")
  local lcount = vim.api.nvim_buf_line_count(0)
  if ((mark[1] > 0) and (mark[1] <= lcount)) then
    return pcall(vim.api.nvim_win_set_cursor, 0, mark)
  else
    return nil
  end
end
autocmd("BufReadPost", {group = augroup("ReturnToLastEditPositionWhenOpeningFiles"), callback = return_last_position})
local function _3_()
  return vim.cmd("tabdo wincmd =")
end
return autocmd("VimResized", {group = augroup("AutoResizeSplits"), callback = _3_})
