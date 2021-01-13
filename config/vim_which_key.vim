let g:maplocalleader = ','
let g:which_key_map =  {}
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

" Define a separator
let g:which_key_sep = '→'

let g:which_key_map.v = {
	\ 'name' : '+windows' ,
	\ 'w' : ['<C-W>w'     , 'other-window']          ,
	\ 'd' : ['<C-W>c'     , 'delete-window']         ,
	\ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
	\ 'h' : ['<C-W>h'     , 'window-left']           ,
	\ 'j' : ['<C-W>j'     , 'window-below']          ,
	\ 'l' : ['<C-W>l'     , 'window-right']          ,
	\ 'k' : ['<C-W>k'     , 'window-up']             ,
	\ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
	\ 'J' : [':resize +5'  , 'expand-window-below']   ,
	\ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
	\ 'K' : [':resize -5'  , 'expand-window-up']      ,
	\ '=' : ['<C-W>='     , 'balance-window']        ,
	\ 's' : ['<C-W>s'     , 'split-window-horizontal']    ,
	\ 'v' : ['<C-W>v'     , 'split-window-vertical']    ,
	\ '?' : ['Windows'    , 'fzf-window']            ,
	\}

let g:which_key_map.P = {
  \ 'name': 'VimPlug',
	\ 'i' : ['PlugInstall'    , ':PlugInstall'],
	\ 'u' : ['PlugUpdate'    , ':PlugUpdate'],
	\ 'c' : ['PlugClean'    , ':PlugClean'],
	\}

let g:which_key_map.e = {
  \ 'name': 'Explorer',
  \ 'e' : [':CocCommand explorer', 'Explorer'],
  \ 'f' : [':CocCommand explorer --preset floating<CR>', 'Explorer Floating'],
  \ 'b' : [':CocCommand explorer --preset buffer<CR>', 'Explorer Buffer']
  \}


" Register which key map
call which_key#register(',', "g:which_key_map")



""""""""""""""""
" COC-Bookmark "
""""""""""""""""
let g:which_key_map.m = {
  \ 'name': 'VimPlug',
	\ 'l' : [':CocList bookmark'    , 'Bookmark List'],
	\ 't' : [':CocCommand bookmark.toggle'    , 'Bookmark Toggle'],
	\ 'n' : [':CocCommand bookmark.next'    , 'Next Bookmark'],
	\ 'p' : [':CocCommand bookmark.prev'    , 'Previous Bookmark'],
	\ 'c' : [':CocCommand bookmark.clearForCurrentFile'    , 'Bookmark Clean'],
	\ 'C' : [':CocCommand bookmark.clearForAllFiles'    , 'Bookmark Clean All Files'],
	\}

