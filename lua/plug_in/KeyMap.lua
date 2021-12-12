vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

options = { noremap = true }
options2 = { noremap = true, silent = true }

--[General]--
--[Normal Mode]--
map("n", "tn", ":tabnew<cr>", options)
map("n", "tc", ":tabclose<cr>", options)
map("n", "<TAB>", ":bnext<cr>", options)
map("n", "<S-TAB>", ":bprevious<cr>", options)
map("n", "<leader>db", ":bdelete!<cr>", options)
map("n", "<leader>y", ":StripWhitespace<CR>", options)
map("n", ",/", ":noh<cr>", options2)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-l>", "<C-w>l", options)
map("n", "<leader><CR>", ":so ~/dotfiles/init.lua<CR>", options)
map("n", "<leader>,", ":w<CR>", options)

--[Insert Mode]--
map("i", "kj", "<ESC>", options)
--[Terminal Mode]--
map("t", "<ESC>", "<C-\\><C-n>", options)

--[TeleScope]--
map("n", "<leader>p", ":Telescope find_files<cr>", options)
map("n", "<leader>b", ":Telescope buffers<cr>", options)
map("n", "<leader>sm", ":Telescope marks<cr>", options)
map("n", "<leader>a", ":Telescope live_grep prompt_prefix=🔍<cr>", options)
map("n", "<leader>fh", ":Telescope help_tags<cr>", options)

--[Explorer]--
map("n", "<leader>e", ":NvimTreeToggle<CR>", options)

--[LspSaga]--
map("n", "<A-o>", ":Lspsaga open_floaterm<CR>", options2)
map("n", "<A-c>", ":Lspsaga close_floaterm<CR>", options2)
map("n", "[e", ":Lspsaga diagnostic_jump_next<CR>", options2)
map("n", "]e", ":Lspsaga diagnostic_jump_prev<CR>", options2)

--[[Saga Scroll]]
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")


--[[Hop]]
map("n", "<leader>w", ":HopWord<CR>", options2)

--[Visual Mode]--
--[[Better indenting]]
map("v", "<", "<gv", options)
map("v", ">", ">gv", options)
map("v", "J", ":m '>+1<CR>gv=gv", options)
map("v", "K", ":m '<-2<CR>gv=gv", options)


--[[Neoformat]]
map("n", "<A-l>", ":Neoformat<CR>", options2)
