"***************"
" Vista
"***************"
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'ctags'
let g:vista_sidebar_width = 35
let g:vista_fzf_preview = ['right:60%']
let g:vista_keep_fzf_colors = 1
