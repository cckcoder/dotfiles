set nocompatible

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

"***************"
" SYNTAX CHECK & HIGHLIGHT
"***************"
Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'
Plug 'StanAngeloff/php.vim'
Plug 'lepture/vim-jinja'
Plug 'pechorin/any-jump.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"***************"
" Status Line
"***************"
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'


"***************"
" Tools
"***************"
Plug 'liuchengxu/vim-which-key'
Plug 'preservim/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'psliwka/vim-smoothie'
Plug 'raimondi/delimitmate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-unimpaired'
Plug 'sjl/gundo.vim'
Plug 'jsfaint/gen_tags.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }

"***************"
" PYTHON
"***************"
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

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
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
Plug 'pineapplegiant/spaceduck'
Plug 'joshdick/onedark.vim'
Plug 'haishanh/night-owl.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'ajh17/spacegray.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'

"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"***************"
" Colorscheme
"***************"

source ~/dotfiles/config/theme.vim
