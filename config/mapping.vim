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
nmap <leader>y :StripWhitespace<CR>
nmap <silent> <Leader>l :noh<CR>
nnoremap <Leader>so :so %<CR>
nmap zz :w!<CR>
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>
nnoremap <leader>bd :Bdelete<cr>
nnoremap <leader><TAB> :cnext<cr>
nnoremap <leader><S-TAB> :cprev<cr>
nnoremap <leader>E :copen<cr>
nnoremap <leader>Y gg"+yG

vnoremap <leader>p "_dP
vnoremap <leader>y "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap kj <Esc>


"***************"
" Gundo
"***************"
nmap <F5> :GundoToggle<cr>


"***************"
" Fzf
"***************"
nnoremap <leader>p :Files<Cr>
nnoremap <leader>bf :Buffers<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>T :Tags<CR>
nnoremap <leader>m :Marks<CR>


"***************"
" Ack
"***************"
nmap <leader>a :Ag!<Space>


"***************"
" Explorer
"***************"
nnoremap <leader>e :NvimTreeToggle<CR>


"***************"
" nvim-compe
"***************"
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


"***************"
" Manual MAP
"***************"
:map <F4> i{{ <Esc>Ea }}<Esc>
