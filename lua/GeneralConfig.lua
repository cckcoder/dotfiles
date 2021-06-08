vim.cmd('set encoding=utf-8')
vim.cmd('set clipboard+=unnamedplus')
vim.cmd('set autoindent expandtab si')
vim.cmd('set tabstop=2 shiftwidth=2 softtabstop=2')

vim.o.termguicolors = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smarttab = true
vim.o.shiftround = true
vim.o.incsearch = true
vim.o.completeopt = "menuone,noselect"
vim.o.cursorline = true
vim.o.linespace = 4
vim.o.linebreak = true
vim.o.hidden = true
vim.o.showmatch = true
vim.o.wildmenu = true
vim.o.autoread = true

--[[Number Group]]--
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 5

--[[Set 80 characters]]--
vim.o.textwidth = 80

--[[Performance Tuning]]--
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.updatetime = 300
vim.o.title = true

--[[Splite Window]]--
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.wildignore = "**/env/*,**/node_modules/**,.git/*,*/.hg,*.png,*.jpg,*.gif,*.jpeg"

--[[Vsnip]]--
vim.g.vsnip_snippet_dir = "~/dotfiles/vsnip"

