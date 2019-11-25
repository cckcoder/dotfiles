set nocompatible
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
Plug 'posva/vim-vue'
Plug 'raimondi/delimitmate'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
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

"***************"
" Autocomplete
"***************"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install'}
Plug 'davidhalter/jedi-vim'
call plug#end() 

"***************"
" General
"***************"
let g:python3_host_prog = expand('$HOME/neovim3/bin/python3')
let g:python_host_prog = '/usr/bin/python2'
set hidden

"***************"
" Map key
"***************"
map <F6> :setlocal spell! spelllang=en_us<CR>
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"***************"
" Colorscheme
"***************"
syntax on
set termguicolors
colorscheme gruvbox
"let g:purify_override_colors = {
    "\ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    "\ 'green': { 'gui': '#5FD700', 'cterm': '76' }
"\ }

"***************"
" General
"***************"
set nocp
set wrap
set number
set showmatch
set undolevels=1000
set wildmode=longest,list:longest 
set path +=**
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
set magic
set textwidth=80

"***************"
" Performance Tuning
"***************" 
set lazyredraw
set ttyfast             
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
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1

" ***************"
" Vim light line
" ***************"
let g:lightline = {
	\ 'colorscheme': 'purify',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'currentfunction', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ }

"***************"
" Enable omni completion.
"***************"
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
" VIM-CSS
"***************"
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

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
" Tagbar
"***************"
map <C-m> :TagbarToggle<CR> 
map <C-c> :noh<CR> 
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
" FZF
"***************"
nnoremap <C-p> :Files<Cr> 
let g:fzf_layout = { 'down': '~40%' }

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
" VIM-SIGNIFY
"***************"
let g:signify_vcs_list = [ 'git', 'hg' ]

"***************"
" VIM-JSX
"***************"
let g:jsx_ext_required = 1

"***************"
" VIM-JAVASCRIPT
"***************"
let g:javascript_plugin_jsdoc = 1

"***************"
"	SYNTASTIC
"***************"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"***************"
" Ultisnips
"***************"
let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/UltiSnips']
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set secure
