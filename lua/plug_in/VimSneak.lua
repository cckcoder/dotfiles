local cmd = vim.cmd

cmd("let g:sneak#label = 1")
cmd("let g:sneak#s_next = 1")
cmd("let g:sneak#prompt = '🔎 '")
cmd("autocmd User SneakLeave set nocursorcolumn nocursorline")
