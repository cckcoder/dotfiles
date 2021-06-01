"***************"
" Encoding"
" ***************"
set encoding=utf-8
set fileencoding=utf-8
let &t_ut=''

"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = expand('$HOME/neovim2/bin/python')

set backspace=indent,eol,start
set hidden
set wrap
set linespace=4 "Like line height in CSS
set linebreak "Soft word wrap
set display+=lastline,msgsep
set pumheight=15
set cmdheight=2

set showmatch
set wildmode=list:longest,full
set path+=**
set wildmenu
set complete=.,w,b,u,k
set nopaste
set cursorline
set scrolloff=8

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
set autoindent expandtab si
set tabstop=2 shiftwidth=2 softtabstop=2
set shiftround
set smarttab
set clipboard+=unnamedplus
set ruler
set showtabline=2

"***************"
" Performance Tuning
"***************"
set updatetime=300
set timeoutlen=500
set ttimeoutlen=0
set ttyfast
set lazyredraw
set title
set shortmess+=c
set autoread
set re=1

"***************"
" Turn off Swap Files
"***************"
set noswapfile
set nobackup
set nowritebackup

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
" Fold
"***************"
set foldmethod=manual
set foldlevel=1
set foldclose=all

"***************"
" Vim ignore path
"***************"
set wildignore+=**/env/*,**/node_modules/**,.git/*,*/.hg,*.png,*.jpg,*.gif,*.jpeg

"***************"
" Tags
"***************"
set tags=./tags,tags;$HOME

"***************"
" Python config
"***************"
augroup ft_python
  autocmd!
  autocmd FileType python set sw=4 ts=4 sts=4
augroup END

"***************"
" Vue config
"***************"
augroup ft_vue
  autocmd!
  autocmd FileType vue set sw=2 ts=2 sts=2
augroup END

"***************"
" HTML config
"***************"
augroup ft_html
  autocmd!
  autocmd FileType html set sw=2 ts=2 sts=2
augroup END

"***************"
" PHP config
"***************"
augroup ft_php
  autocmd!
  autocmd FileType php set sw=4 ts=4 sts=4
  let g:phpcomplete_search_tags_for_variables = 1
  let g:php_syntax_extensions_enabled = []
  let g:php_var_selector_is_identifier = 1
  let g:php_sql_query = 1
  let php_htmlInStrings = 1
  let g:php_html_load = 1
augroup END

"***************"
" Vsnip
"***************"
let g:vsnip_snippet_dir = expand('~/dotfiles/vsnip')
