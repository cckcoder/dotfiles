augroup plugin_tools
  autocmd!
  autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Use auocmd to force lightline update.
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END
