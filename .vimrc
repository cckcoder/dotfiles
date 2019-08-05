syntax on
syntax enable
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"***************"
" Encoding"
" ***************"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'mattn/emmet-vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-endwise'
Plug 'valloric/matchtagalways'
Plug 'sbdchd/neoformat'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-python/python-syntax'
Plug 'kien/ctrlp.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
"Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'jelera/vim-javascript-syntax'
"Plug 'SirVer/ultisnips'
Plug 'hail2u/vim-css3-syntax'

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
"***************"
" Autocomplete
"***************"
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install'}
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
	Plug 'kristijanhusak/deoplete-phpactor'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp' 
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
call plug#end() 
"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = '/usr/bin/python2'
highlight Normal ctermbg=NONE

"***************"
" Colorscheme
"***************"
let g:gruvbox_italic=1
colorscheme gruvbox
"let g:onedark_termcolors=256
"colorscheme onedark
"colorscheme codedark


set nocp
set wrap
set number
set showmatch
set undolevels=1000
"set wildmode=full
set wildmode=longest,list:longest 
set path +=**
set wildmenu
set cursorline
set colorcolumn=180
"set complete+=kspell 
set complete=.,w,b,u,k

"***************"
" Tabs and spacing
"***************"
set laststatus=2
set autochdir
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set smarttab
set expandtab
set clipboard+=unnamedplus
set ruler
"set completeopt-=preview
"set completeopt+=longest,menuone,noselect
set completeopt=noinsert,menuone,noselect
set si
set magic
set lazyredraw
set textwidth=80

set bomb
set binary
set title
set ttyfast             
set nobackup
set noswapfile
set splitbelow
set splitright
set shortmess+=c
set autoread
"Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set diffopt +=iwhite
"***************"
" Vim ignore path
"***************"
"Syntax highlighting in Markdown
set wildignore+=*/env/*,*/node_modules/*

au BufNewFile,BufReadPost *.md set filetype=markdown
let g:polyglot_disabled = ['markdown']
let g:markdown_fenced_languages = ['bash=sh', 'css', 'django', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'ruby', 'sass', 'xml', 'html', 'vim']

"***************"
" Deoplete
"***************"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1 

"***************"
" NCM2
"***************"
autocmd BufEnter * call ncm2#enable_for_buffer()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"***************"
"split navigations
"***************"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"***************"
" Nerd tree 
"***************"
autocmd vimenter * NERDTree
map <C-\> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeQuitOnOpen = 1

" ***************"
" Vim light line
" ***************"
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction'
	\ },
\ }

"***************"
" Mucomplete
"***************"
"let g:mucomplete#enable_auto_at_startup = 1
"let g:mucomplete#completion_delay = 1
"let g:mucomplete#reopen_immediately = 0 
"let g:mucomplete#minimum_prefix_length = 3

"***************"
" Enable omni completion.
"***************"
augroup omnicomplete
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	autocmd FileType php setlocal omnifunc=phpactor#Complete
	autocmd FileType vue syntax sync fromstart
	autocmd FileType python setlocal omnifunc=jedi#completions
augroup	end

"***************"
"" Use new fuzzy based matche
"***************"
 let g:ncm2#matcher = 'substrfuzzy'

"***************"
" comfortable motion
"***************"
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"***************"
" Vim IndentLine
"***************"
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
let g:indentLine_color_dark = 1 

"***************"
" Map key
"***************"
"map <C-l> :noh<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
map <F6> :setlocal spell! spelllang=en_us<CR>

"***************"
" Matching Tags
"***************"
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'Javascript.jsx': 1
    \}

"***************"
" Jedi-Vim
"***************" 
let g:jedi#smart_auto_mappings = 1 
let g:jedi#auto_initialization = 1
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_command = "<C-Space>"

"***************"
" Asyncomplete
"***************"
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1

"***************"
" Tagbar
"***************"
map <C-m> :TagbarToggle<CR>

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

"***************"
" Vim-emmet
" ***************"
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"***************"
" CtrlP
"***************"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

"***************"
" NVIM SETUP
"***************"
tnoremap <Esc> <C-\><C-n>

"***************"
" PHPACTOR
"***************"
let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'master'
let g:phpactorOmniAutoClassImport = v:true
let g:phpactorCompletionIgnoreCase = 0
let g:phpactorOmniError = v:true

"***************"
" VIM-CSS
"***************"
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
