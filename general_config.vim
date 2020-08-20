"***************"
" Encoding"
" ***************"
set encoding=utf-8 nobomb
set fileencoding=utf-8
set termencoding=utf-8

"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = '/usr/bin/python2'

set backspace=indent,eol,start

set hidden
set nocp
set wrap
set relativenumber number
set linespace=4 "Like line height in CSS
set foldmethod=indent "Like Toggle code in VScode

set showmatch
set undolevels=1000
set wildmode=list:longest,full
set path+=**
set nocompatible
set wildmenu
set cursorline
set colorcolumn=180
set complete=.,w,b,u,k
set nopaste

"***************"
" Tabs and spacing
"***************"
set laststatus=2
set autochdir
set autoindent expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set shiftround
set smarttab
set clipboard+=unnamedplus
set ruler
set completeopt=noinsert,menuone,noselect
set si

"***************"
" Performance Tuning
"***************"
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast
set lazyredraw
set nocursorline
set title
set nobackup
set noswapfile
set splitbelow
set splitright
set shortmess+=c
set autoread

"***************"
" Search
"***************"
set hlsearch incsearch ignorecase smartcase
set diffopt +=iwhite

"***************"
" Vim ignore path
"***************"
set wildignore+=**/env/*,**/node_modules/**,.git,.hg,*.png,*.jpg,*.gif,*.jpeg

"***************"
" Tags
"***************"
set tags=tags

"***************"
" Enable omni completion.
"***************"
set omnifunc=ale#completion#OmniFunc

"***************"
" Python config
"***************"
autocmd FileType python set sw=4 ts=4 sts=4

"***************"
" PHP config
"***************"
autocmd FileType php set sw=4 ts=4 sts=4
let g:phpcomplete_search_tags_for_variables = 1
let g:php_syntax_extensions_enabled = []
let g:php_var_selector_is_identifier = 1
let php_htmlInStrings = 1
let php_html_load = 1
"***************"
" Coc json
"***************"
autocmd FileType json syntax match Comment +\/\/.\+$+

set secure
