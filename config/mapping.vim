"***************"
" NVIM SETUP
"***************"
tnoremap kj <C-\><C-n>


"***************"
"split navigations
"***************"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>


"***************"
" Leader
"***************"
let mapleader = " "


"***************"
" Remap
"***************"
nnoremap <silent> <Leader>l :noh<CR>
vnoremap <silent> <Leader>l <C-[>
nnoremap <Leader>so :so %<CR>
nnoremap <leader>Y gg"+yG
vnoremap <leader>y "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


"***************"
" Quick Fix
"***************"
nnoremap <leader><TAB> :cnext<cr>
nnoremap <leader><S-TAB> :cprev<cr>
nnoremap <leader>E :copen<cr>


"***************"
" Gundo
"***************"
nmap <F5> :GundoToggle<cr>


"***************"
" nvim-compe
"***************"
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
