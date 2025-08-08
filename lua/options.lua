vim.g.mapleader = " "
vim.o.relativenumber = true
vim.o.confirm = true
vim.opt.termguicolors = true

-- encoding
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- laststatus
vim.o.laststatus = 3

-- clipboard and cursorline
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.cursorlineopt = "both"

-- indent
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.opt.fillchars = { eob = " " }
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = "a"

-- numbers
vim.o.number = true
vim.o.numberwidth = 2

vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 400
vim.o.undofile = true
vim.o.scrolloff = 10
vim.o.wrap = false

-- interval for writing swap file to disk, also used by gitsigns
vim.o.updatetime = 250

-- clipboard on wsl2
function is_wsl()
	local wsl_env = vim.fn.getenv("WSLENV")
	local uname = vim.fn.system("uname -r")

	return wsl_env ~= vim.NIL or uname:match("WSL")
end

if is_wsl() then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end
