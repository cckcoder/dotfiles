local map = vim.api.nvim_set_keymap

options = { noremap = true }

--[General]--
--[Normal Mode]--
map('n', '<leader>w', ':HopWord<cr>', options)
map('n', 'tn', ':tabnew<cr>', options)
map('n', 'tc', ':tabclose<cr>', options)
map('n', '<TAB>', ':bnext<cr>', options)
map('n', '<S-TAB>', ':bprevious<cr>', options)
map('n', '<leader>db', ':bdelete!<cr>', options)
map('n', '<leader>a', ':Ag! ', options)
map('n', '<leader>y', ':StripWhitespace<CR>', options)
map('n', 'zz', ':w!<cr>', options)


--[Insert Mode]--
map('i', 'kj', '<ESC>', options)

--[TeleScope]--
map('n', '<leader>p', ':Telescope find_files<cr>', options)
map('n', '<leader>fb', ':Telescope buffers<cr>', options)
map('n', '<leader>fm', ':Telescope marks<cr>', options)
map('n', '<leader>fg', ':Telescope live_grep<cr>', options)
map('n', '<leader>fh', ':Telescope help_tags<cr>', options)

--[Explorer]--
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)

--[LspSaga]--
map('n', '<A-d>', ':Lspsaga open_floaterm<CR>', options)
map('n', '<A-c>', ':Lspsaga close_floaterm<CR>', options)
