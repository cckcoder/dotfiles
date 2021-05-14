local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<leader>w', ':HopWord<cr>', options)
