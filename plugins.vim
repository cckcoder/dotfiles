call plug#begin()
"***************"
" SEARCH FILE
"***************"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

"***************"
" HTML & CSS
"***************"
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'

"***************"
" SYNTAX CHECK & HIGHLIGHT
"***************"
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'

"***************"
" Tools
"***************"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'yuttie/comfortable-motion.vim'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-endwise'
Plug 'valloric/matchtagalways'
Plug 'raimondi/delimitmate'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
"***************"
" PYTHON
"***************"
Plug 'vim-python/python-syntax'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"***************"
" JS
"***************"
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'

"***************"
" GIT
"***************"
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

"***************"
" Snippet
"***************"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"***************"
" Colorscheme
"***************"
Plug 'cocopon/iceberg.vim'

"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install'}
Plug 'davidhalter/jedi-vim'
call plug#end()
