" ***************"
" Vim light line
" ***************"
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunctio

let g:lightline = {
  \ 'colorscheme': 'gruvbox',
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
" Devicons
" ***************"
let g:webdevicons_enable = 1

"***************"
" VIM-CSS
"***************"
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"***************"
" Vim IndentLine
"***************"
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['▏']

"***************"
" Matching Tags
"***************"
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'Javascript.jsx': 1
    \}

"***************"
" Vim-emmet
" ***************"
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"***************"
" FZF
"***************"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

"***************"
" VIM-SIGNIFY
"***************"
let g:signify_vcs_list = [ 'git', 'hg' ]

set conceallevel=1

let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"***************"
" Gundo
"***************"
let g:gundo_preview_height = 20
let g:gundo_preview_bottom = 1

"***************"
" Gen Tags
"***************"
let g:gen_tags#ctags_auto_update = 1

"***************"
" Ack
"***************"
let g:ack_autoclose = 1
