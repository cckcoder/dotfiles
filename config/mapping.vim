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
let mapleader = ","

nmap <leader>y :StripWhitespace<CR>
nmap <Leader>l :noh<CR>
nmap <Leader>so :so %<CR>
nmap zz :w<CR>
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>
map <space> /
map <C-space> ?
nmap <leader>bd :bdelete<cr>
imap kj <Esc>
cmap kj <C-C>

"***************"
" Gundo
"***************"
nmap <F5> :GundoToggle<cr>

"***************"
" Fzf
"***************"
map <leader>p :Files<Cr>
map <leader>b :Buffers<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>

"***************"
" Ack
"***************"
nmap <leader>a :Ag!<Space>


"***************"
" Manual MAP
"***************"
:map <F5> i{{ <Esc>Ea }}<Esc>

