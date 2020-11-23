call plug#begin()
"***************"
" SEARCH FILE
"***************"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mileszs/ack.vim'

"***************"
" HTML & CSS
"***************"
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'

"***************"
" SYNTAX CHECK & HIGHLIGHT
"***************"
Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'
Plug 'StanAngeloff/php.vim'
Plug 'lepture/vim-jinja'

"***************"
" Tools
"***************"
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'liuchengxu/vim-which-key'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
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
Plug 'sjl/gundo.vim'
Plug 'jsfaint/gen_tags.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'

"***************"
" PYTHON
"***************"
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"***************"
" GIT & HG
"***************"
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'

"***************"
" Snippets
"***************"
Plug 'honza/vim-snippets'

"***************"
" Colorscheme
"***************"
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tomasiser/vim-code-dark'

"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim'

call plug#end()

"***************"
" Colorscheme
"***************"
colorscheme codedark
"let g:vim_monokai_tasty_italic = 1
"colorscheme vim-monokai-tasty
