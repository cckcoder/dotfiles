"***************"
" Colorscheme
"***************"
set termguicolors
colorscheme dracula
" let g:space_vim_dark_background = 233
" colorscheme space-vim-dark
" hi Comment cterm=italic guifg=#5C6370 ctermfg=59

"***************"
" Encoding"
" ***************"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = '/usr/bin/python2'
set hidden
set nocp
set wrap
set relativenumber number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set showmatch
set undolevels=1000
set wildmode=longest,list:longest
set path+=**
set nocompatible
set wildmenu
set cursorline
set colorcolumn=180
set complete=.,w,b,u,k

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
set wildignore+=**/env/*,**/node_modules/**,.git,.hg,*.png,*.jpg,*.gif,.*jpeg

"***************"
" Tags
"***************"
set tags=./tags;,tags;$HOME

"***************"
" Enable omni completion.
"***************"
set omnifunc=ale#completion#OmniFunc

augroup omnicomplete
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteTags
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteTags
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
	autocmd FileType python setlocal omnifunc=jedi#completions
augroup	end

"***************"
" Python config
"***************"
autocmd FileType python set sw=2 ts=2 sts=2
let g:python_highlight_all = 1

"***************"
" PHP config
"***************"
autocmd FileType php set sw=4 ts=4 sts=4
let g:phpcomplete_search_tags_for_variables = 1
