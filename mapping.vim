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
nmap <leader>F :NERDTreeFind<CR>
nmap <leader>bf :Buffers<CR>
nmap <leader>bt :BTags<CR>
nmap <Leader>l :ALELint<CR>

"***************"
" Easy Motion
"***************"
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"***************"
" Tagbar
"***************"
nmap <C-m> :Vista coc<CR>
