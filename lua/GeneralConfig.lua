local opt = vim.opt
local fn = vim.fn
local cmd = vim.cmd

--[[Utils]]
opt.encoding = "utf-8"
opt.clipboard = "unnamedplus"
vim.o.termguicolors = true
if fn.filereadable("~/neovim3/bin/python3.10") then
	vim.g.python3_host_prog = "~/neovim3/bin/python3.10"
end

opt.history = 500
opt.smarttab = true
opt.shiftround = true
opt.incsearch = true
opt.cursorline = true
opt.linespace = 4
opt.linebreak = true
opt.hidden = true
opt.wildmenu = true
opt.autoread = true
opt.pumblend = 7
opt.pumheight = 20
opt.scrolloff = 3
opt.laststatus = 2
opt.showbreak = "↳ "
opt.ruler = true

cmd("set formatoptions-=cro")

--[[Number Group]]
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 5

--[[Set 80 characters]]
vim.o.textwidth = 80
opt.synmaxcol = 200

--[[Performance Tuning]]
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.updatetime = 300
vim.o.title = true

--[[Splite Window]]
vim.o.splitbelow = true
vim.o.splitright = true
opt.wildignore = {
	"**/env/*",
	"**/node_modules/**",
	".git/*",
	"*/.hg",
	"*.png,",
	"*.jpg",
	"*.gif",
	"*.jpeg",
	"**/version-name/**",
}

--[[Fold]]
opt.foldmethod = "indent"
opt.foldnestmax = 10
opt.foldlevel = 2

--[[Indentation]]
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true -- Insert indents automatically
opt.tabstop = 4 -- Number of spaces tabs count for
opt.softtabstop = 4
opt.shiftround = true -- Round indent
opt.joinspaces = false -- No double spaces with join after a dot

--[[Display]]
opt.wrap = true
opt.lazyredraw = true
opt.list = true
opt.showcmd = true

--[[Backup]]
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.bufhidden = "hide"

--[[Search]]
opt.ignorecase = true
opt.smartcase = true
opt.wrapscan = true
opt.showmatch = true
