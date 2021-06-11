local cmd = vim.cmd

cmd("let g:signify_vcs_list = ['git', 'hg']")
cmd("let g:signify_realtime = 1")

vim.g.signify_sign_add = '│'
vim.g.signify_sign_delete = '✕'
vim.g.signify_sign_change = '⚡'

