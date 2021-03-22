"***************"
" NVIM SETUP
"***************"
tnoremap <Esc> <C-\><C-n>
tnoremap kj <Esc>

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

nmap <leader>y :StripWhitespace<CR>
nmap <Leader>l :noh<CR>
nnoremap <Leader>so :so %<CR>
nmap zz :w<CR>
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader><TAB> :cnext<cr>
nnoremap <leader><S-TAB> :cprev<cr>
nnoremap <leader>E :copen<cr>

"***************"
" Gundo
"***************"
nmap <F5> :GundoToggle<cr>

"***************"
" Fzf
"***************"
nnoremap <leader>p :Files<Cr>
map <leader>bf :Buffers<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>

"***************"
" Ack
"***************"
nmap <leader>a :Ag!<Space>


"***************"
" Manual MAP
"***************"
:map <F4> i{{ <Esc>Ea }}<Esc>
