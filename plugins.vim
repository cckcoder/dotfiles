call plug#begin()
"***************"
" Utility
"***************" 
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'mattn/emmet-vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-endwise'
Plug 'valloric/matchtagalways'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-python/python-syntax'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'raimondi/delimitmate'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
"***************"
" Snippet
"***************" 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"***************"
" Colorscheme
"***************" 
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'colepeters/spacemacs-theme.vim' 
Plug 'liuchengxu/space-vim-dark'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' }
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/landscape.vim'
Plug 'mhinz/vim-janah'
Plug 'doums/darcula'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'patstockwell/vim-monokai-tasty'

"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install'}
Plug 'davidhalter/jedi-vim'
call plug#end() 
