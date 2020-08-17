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
  \ 'coc-vimlsp',
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

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Coc will display diagnostics (errors and warnings)
nnoremap <silent> K :call CocAction('doHover')<CR>

"***************"
" Coc-Snippet
" ***************"
imap <C-l> <Plug>(coc-snippets-expand)
vmap <leader>j <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<leader>j'
let g:coc_snippet_prev = '<c-k>'
imap <leader>j <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
