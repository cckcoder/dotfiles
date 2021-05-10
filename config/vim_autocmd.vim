augroup plugin_tools
  autocmd!
  " Highlight symbol under cursor on CursorHold
  " Use auocmd to force lightline update.
augroup END

augroup vimrc
  autocmd!
augroup END

" Set nonumber in terminal window
autocmd vimrc BufWinEnter * if &l:buftype == 'terminal' | setlocal nonumber | endif
