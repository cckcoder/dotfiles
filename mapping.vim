"***************"
" NVIM SETUP
"***************"
tnoremap <Esc> <C-\><C-n>

"***************"
"split navigations
"***************"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

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
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>F :NERDTreeFind<CR>
nmap <Leader>l :ALELint<CR>
nmap <c-s> :w<CR>
nmap <c-l> :noh<CR>
nmap <leader>a :Ack! <c-r><c-w><CR>

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
nmap <C-m> :Vista<CR>

"***************"
" Gundo
"***************"
nmap <F5> :GundoToggle<cr>


"***************"
" Fzf
"***************"
nmap <leader>p :Files<Cr>
nmap <leader>b :Buffers<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
