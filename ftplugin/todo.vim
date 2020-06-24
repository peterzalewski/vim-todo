if exists('b:loaded_todo')
    finish
endif
let b:loaded_todo = 1

augroup Todo
    autocmd FileType todo setlocal commentstring=x\ %s
    autocmd FileType todo :iabbrev <buffer> <expr> \t strftime("%Y-%m-%d")
augroup END
