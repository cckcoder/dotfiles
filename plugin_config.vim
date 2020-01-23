"***************"
" Nerd tree
"***************"
autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1

"***************"
" Nerd tree syntax Highlight
"***************"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" ***************"
" Vim light line
" ***************"
let g:lightline = {
	\ 'colorscheme': 'iceberg',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'currentfunction', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'filetype': 'MyFiletype',
	\   'fileformat': 'MyFileformat',
	\ },
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

"***************"
" VIM-CSS
"***************"
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"***************"
"" Use new fuzzy based matche
"***************"
 let g:ncm2#matcher = 'substrfuzzy'

"***************"
" Vim IndentLine
"***************"
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['┆']
"let g:indentLine_setColors = 0
"let g:indentLine_color_dark = 1

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
" Jedi-Vim
"***************"
let g:jedi#smart_auto_mappings = 1
let g:jedi#auto_initialization = 1
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_command = "<C-Space>"

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
nnoremap <C-p> :Files<Cr>
let g:fzf_layout = { 'down': '~40%' }

"***************"
" VIM-SIGNIFY
"***************"
let g:signify_vcs_list = [ 'git', 'hg' ]

"***************"
" VIM-JSX
"***************"
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

"***************"
" VIM-JAVASCRIPT
"***************"
let g:javascript_plugin_jsdoc = 1
let g:used_javascript_libs = 'react,jquery'

"***************"
"	SYNTASTIC
"***************"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"***************"
" Ultisnips
"***************"
let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/UltiSnips']
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"***************"
" Font
"***************"
set guifont=JetBrainsMono:h11

