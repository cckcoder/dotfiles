augroup plugin_tools
  autocmd!
  " Highlight symbol under cursor on CursorHold
  " Use auocmd to force lightline update.
augroup END


augroup vimrc
  autocmd!
augroup END


function! LspSetMappings()
  setlocal omnifunc=v:lua.vim.lsp.omnifunc
  nnoremap <silent> <buffer> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> <buffer> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> <buffer> gK     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> <buffer> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> <buffer> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> <buffer> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
  nnoremap <silent> <buffer> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> <buffer> gR    <cmd>lua vim.lsp.buf.rename()<CR>
endfunction


autocmd FileType lua,sh,vue,py,php,html,css,javascript :call LSPSetMappings()
" Set nonumber in terminal window
autocmd vimrc BufWinEnter * if &l:buftype == 'terminal' | setlocal nonumber | endif
" nvim-lightbulb
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
