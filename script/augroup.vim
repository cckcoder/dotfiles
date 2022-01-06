augroup toggle_relative_number
    autocmd InsertEnter * :setlocal norelativenumber
    autocmd InsertLeave * :setlocal relativenumber
augroup END

augroup vue_dev
    autocmd FileType vue set sw=2 ts=2 sts=2
    autocmd BufRead, BufNewFile *.vue setfiletype html
augroup END

augroup java_dev
    autocmd FileType java set sw=2 ts=2 sts=2
augroup END

autocmd FileType javascript set sw=2 ts=2 sts=2
