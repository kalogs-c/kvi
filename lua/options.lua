-- [nfnl] fnl/options.fnl
vim.loader.enable()
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.confirm = true
vim.opt.wrap = false
vim.opt.mouse = "a"
vim.opt.iskeyword:append("-")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.undodir = (os.getenv("HOME") .. "/.vim/undodir")
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 300
vim.opt.fillchars = {eob = " "}
vim.opt.guicursor = {"n-v-c:block", "i-ci:ver25", "r-cr:hor20", "o:hor50", "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", "sm:block-blinkwait175-blinkoff150-blinkon175"}
vim.opt.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.api.nvim_set_hl(0, "StatusLine", {bg = "none"})
vim.api.nvim_set_hl(0, "StatusLineNC", {bg = "none"})
vim.opt.diffopt:append("linematch:60")
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.opt.clipboard:append("unnamedplus")
local function is_wsl()
  local wsl_env = vim.fn.getenv("WSLENV")
  local uname = vim.fn.system("uname -r")
  return ((wsl_env ~= vim.NIL) or uname:match("WSL"))
end
if is_wsl() then
  vim.g.clipboard = {name = "WslClipboard", copy = {["+"] = "clip.exe", ["*"] = "clip.exe"}, paste = {["+"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))", ["*"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"}, cache_enabled = 0}
  return nil
else
  return nil
end
