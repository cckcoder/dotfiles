"***************"
" Map key
"***************"
map <F6> :setlocal spell! spelllang=en_us<CR>
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"***************"
" NVIM SETUP
"***************"
tnoremap <Esc> <C-\><C-n>

"***************"
"split navigations
"***************"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"***************"
" comfortable motion
"***************"
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"***************"
" Leader
"***************"
let mapleader = ","
nmap <leader>y :StripWhitespace<CR>
nmap <leader>\ :noh<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>bf :Buffers<CR>
nmap <leader>bt :BTags<CR>
map <leader>w <Plug>(easymotion-bd-w)

"***************"
" Tagbar
"***************"
nmap <C-m> :TagbarToggle<CR>
