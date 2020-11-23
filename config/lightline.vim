let g:lightline = {
  \ 'colorscheme': 'codedark',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction',
	\   'filetype': 'MyFiletype',
	\   'fileformat': 'MyFileformat',
  \   'method': 'NearestMethodOrFunction'
	\ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Config for Devicons
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" ***************"
" Vim light line
" ***************"
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunctio

" ***************"
" Devicons
" ***************"
let g:webdevicons_enable = 1
