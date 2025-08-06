local map = vim.keymap.set

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_liststyle = 3

-- toggle netrw
function toggleNetrw()
  if vim.bo.filetype == "netrw" then
    vim.cmd("bd")
  else
    vim.cmd("Ex")
  end
end

map("n", "<C-n>", toggleNetrw, { desc = "toggle netrw" })
