"***************"
"	ALE
"***************"
hi! link ALEError Error
hi! link ALEWarning CodeWarning
hi! link ALEInfo CodeInfo
hi! link ALEErrorSign ErrorSign
hi! link ALEWarningSign WarningSign
hi! link ALEInfoSign InfoSign

set omnifunc=ale#completion#OmniFunc

let g:ale_completion_enabled=1
let g:ale_completion_excluded_words=1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['pylint'],
\   'php': ['phpcs'],
\   'vim': ['vint']
\}

let g:ale_lint_on_save = 1
