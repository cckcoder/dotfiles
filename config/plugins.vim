set nocompatible

call plug#begin()
"***************"
" SEARCH FILE
"***************"
Plug 'airblade/vim-rooter'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"***************"
" HTML & CSS
"***************"
Plug 'mattn/emmet-vim'

"***************"
" SYNTAX CHECK & HIGHLIGHT
"***************"
Plug 'lepture/vim-jinja'
Plug 'pechorin/any-jump.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

"***************"
" Status Line
"***************"
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'folke/trouble.nvim'

"***************"
" BufferLine
"***************"
Plug 'akinsho/nvim-bufferline.lua'

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
Plug 'folke/lsp-colors.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'phaazon/hop.nvim'
Plug 'moll/vim-bbye'
Plug 'onsails/lspkind-nvim'
Plug 'simrat39/symbols-outline.nvim'

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
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'


"***************"
" Colorscheme
"***************"
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
Plug 'pineapplegiant/spaceduck'
"Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'navarasu/onedark.nvim'
Plug 'romgrk/doom-one.vim'

"***************"
" Autocomplete
"***************"
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

call plug#end()

"***************"
" Colorscheme
"***************"
source ~/dotfiles/config/theme.vim


" ***************"
" Devicons
" ***************"
let g:webdevicons_enable = 1
