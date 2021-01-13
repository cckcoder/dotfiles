augroup plugin_tools
  autocmd!
  "autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
  autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Use auocmd to force lightline update.
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END

augroup vimrc
  autocmd!
augroup END

" Set nonumber in terminal window
autocmd vimrc BufWinEnter * if &l:buftype == 'terminal' | setlocal nonumber | endif
