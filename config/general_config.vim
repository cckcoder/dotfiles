"***************"
" Encoding"
" ***************"
set encoding=utf-8
set fileencoding=utf-8

"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = '/usr/bin/python2'

set backspace=indent,eol,start
set hidden
set wrap
set linespace=4 "Like line height in CSS
set linebreak "Soft word wrap
set display+=lastline,msgsep
set pumheight=10
set cmdheight=2

set showmatch
set wildmode=list:longest,full
set path+=**
set wildmenu
set complete=.,w,b,u,k
set nopaste
set cursorline

"***************"
" Make it obvious where 80 characters is
"***************"
set textwidth=80
set colorcolumn=180

"***************"
" Numbers
"***************"
set relativenumber number
set numberwidth=5

"***************"
" Tabs and spacing
"***************"
set laststatus=2
set autoindent expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set shiftround
set smarttab
set clipboard+=unnamedplus
set ruler
set completeopt=noinsert,menuone,noselect
set si
set showtabline=2

"***************"
" Performance Tuning
"***************"
set updatetime=300
set timeoutlen=500
set ttimeoutlen=0
set lazyredraw
set title
set nobackup
set nowritebackup
set noswapfile
set shortmess+=c
set autoread


"***************"
" Splite Window
"***************"
set splitbelow
set splitright

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
set tags=./tags,tags;$HOME

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

"***************"
" Rainbow
"***************"
let g:rainbow_active = 1

set secure
