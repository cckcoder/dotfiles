augroup toggle_relative_number
    autocmd InsertEnter * :setlocal norelativenumber
    autocmd InsertLeave * :setlocal relativenumber
augroup END

autocmd FileType vue set sw=2 ts=2 sts=2
autocmd FileType javascript set sw=2 ts=2 sts=2
