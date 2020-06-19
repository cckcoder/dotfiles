set updatetime=300
set cmdheight=2
set signcolumn=yes

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-highlight',
  \ 'coc-git',
  \ 'coc-yaml',
  \ 'coc-tsserver',
  \ 'coc-tslint-plugin',
  \ 'coc-python',
  \ 'coc-phpls',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-vetur',
  \ 'coc-marketplace',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-lists',
  \ ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <leader>j <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<leader>j'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <leader>j <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
    \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Coc will display diagnostics (errors and warnings)
nnoremap <silent> K :call CocAction('doHover')<CR>
