scriptencoding utf8
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

syntax on
call plug#begin()
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tbastos/vim-lua'
Plug 'mattn/emmet-vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'raimondi/delimitmate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-endwise'
Plug 'mxw/vim-jsx'
Plug 'valloric/matchtagalways'
Plug 'sbdchd/neoformat'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-python/python-syntax'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
"Plug 'SirVer/ultisnips'
"Plug 'ervandew/supertab'
"***************"
" Colorscheme
"***************" 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'colepeters/spacemacs-theme.vim'
"***************"
" Autocomplete
"***************"
Plug 'maralla/completor.vim'
Plug 'lifepillar/vim-mucomplete'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

"***************"
" General
"***************"
" path to your python
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
highlight Normal ctermbg=NONE
set nocompatible

"***************"
" Colorscheme
"***************"
"set background=dark
colorscheme dracula
"let g:gruvbox_termcolors=16
"colorscheme gruvbox
"set background=dark
"set termguicolors
"hi LineNr ctermbg=NONE guibg=NONE
"hi Comment guifg=#5C6370 ctermfg=59

filetype plugin indent on
set nocp
set wrap
set number
set cursorline
set showmatch
set undolevels=1000
set wildmode=full
"set wildmode=longest,list:longest
set path +=**
set wildmenu
set cursorline
set complete+=kspell

"***************"
" Tabs and spacing
"***************"
set laststatus=2
set autochdir
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set clipboard+=unnamedplus
set ruler
set completeopt-=preview
set completeopt+=longest,menuone,noselect
set si
set magic
set lazyredraw

"***************"
" Encoding"
" ***************"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
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
set ofu=syntaxcomplete#Complete

"Syntax highlighting in Markdown
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:polyglot_disabled = ['markdown']
let g:markdown_fenced_languages = ['bash=sh', 'css', 'django', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'ruby', 'sass', 'xml', 'html', 'vim']

"split navigations
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

" ***************"
" Vim light line
" ***************"
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction'
	\ },
\ }

" Vim-Lua
let g:lua_syntax_someoption = 1

"***************"
" Deoplete
" ***************"
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 100
let g:deoplete#enable_smart_case = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType vue syntax sync fromstart

"***************"
" Completor
" ***************"
let g:completor_complete_options = 'menuone,noselect,preview'
let g:completor_php_omni_trigger = '([$\w]{2,}|use\s*|->[$\w]*|::[$\w]*|implements\s*|extends\s*|class\s+[$\w]+|new\s*)$'
let g:completor_css_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'
let g:completor_python_binary = '/usr/local/lib/python3.5/dist-packages/jedi'
let g:completor_auto_trigger = 0

"***************"
" NCM2"
" ***************"
autocmd BufEnter * call ncm2#enable_for_buffer()
" make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
"***************"
"" Use new fuzzy based matche
"***************"
 let g:ncm2#matcher = 'substrfuzzy'

"***************"
" comfortable motion
"***************"
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"***************"
" Vim IndentLine
"***************"
let g:indentLine_setColors = 0
let g:indentLine_color_dark = 1 

"***************"
" Map key
"***************"
"map <C-l> :noh<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
map <F6> :setlocal spell! spelllang=en_us<CR>

"JSX
let g:jsx_ext_required = 0

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
autocmd FileType python setlocal omnifunc=jedi#completions
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
" For python syntax
let g:python_highlight_all = 1
"***************"
" PHP config
"***************"
autocmd FileType php set sw=4 ts=4 sts=4
"
"***************"
" Vim-emmet
" ***************"
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"***************"
" mucomplete"
" ***************"
let g:mucomplete#chains = {
    \ 'default': ['omni', 'ulti', 'path', 'dict', 'uspl'],
\ }
let g:mucomplete#enable_auto_at_startup = 1
