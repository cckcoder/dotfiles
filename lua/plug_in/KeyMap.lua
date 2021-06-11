
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

options = { noremap = true }
options2 = { noremap = true, silent = true }

--[General]--
--[Normal Mode]--
map('n', '<leader>w', ':HopWord<cr>', options)
map('n', 'tn', ':tabnew<cr>', options)
map('n', 'tc', ':tabclose<cr>', options)
map('n', '<TAB>', ':bnext<cr>', options)
map('n', '<S-TAB>', ':bprevious<cr>', options)
map('n', '<leader>db', ':bdelete!<cr>', options)
map('n', '<leader>y', ':StripWhitespace<CR>', options)
map('n', 'zz', ':w!<cr>', options)
map('n', '<leader>h', ':noh<cr>', options)


--[Insert Mode]--
map('i', 'kj', '<ESC>', options)


--[TeleScope]--
map('n', '<leader>p', ':Telescope find_files<cr>', options)
map('n', '<leader>b', ':Telescope buffers<cr>', options)
map('n', '<leader>sm', ':Telescope marks<cr>', options)
map('n', '<leader>a', ':Telescope live_grep<cr>', options)
map('n', '<leader>fh', ':Telescope help_tags<cr>', options)


--[Explorer]--
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)


--[LspSaga]--
map('n', '<A-d>', ':Lspsaga open_floaterm<CR>', options2)
map('n', '<A-c>', ':Lspsaga close_floaterm<CR>', options2)
--map('n', ';fd', ':Lspsaga lsp_finder<CR>', options2)
--map('n', ';pd', ':Lspsaga preview_definition<CR>', options2)
--map('n', ';ca', ':Lspsaga code_action<CR>', options2)
map('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', options2)
map('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', options2)




--[SymbolsOutLine]--
map('n', '<leader>ol', ':SymbolsOutline<CR>', options)


--[[Compe]]--
vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")


--[[Saga Scroll]]--
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")


--[[Better indenting]]--
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)
