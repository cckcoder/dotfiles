call plug#begin()
"***************"
" SEARCH FILE
"***************"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

"***************"
" HTML & CSS
"***************"
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'

"***************"
" SYNTAX CHECK & HIGHLIGHT
"***************"
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'posva/vim-vue'

"***************"
" Tools
"***************"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
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
Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-unimpaired'
"***************"
" PYTHON
"***************"
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"***************"
" JS
"***************"
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'

"***************"
" GIT & HG
"***************"
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

"***************"
" Snippets
"***************"
Plug 'honza/vim-snippets'

"***************"
" Colorscheme
"***************"
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'dracula/vim', { 'name': 'dracula' }
"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"***************"
" Devicons
"***************"
Plug 'ryanoasis/vim-devicons'

call plug#end()

"***************"
" Colorscheme
"***************"
syntax enable
colorscheme dracula
