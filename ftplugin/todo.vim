if exists('b:loaded_todo')
    finish
endif
let b:loaded_todo = 1

setlocal commentstring=x\ %s
iabbrev <buffer> <expr> \t strftime("%Y-%m-%d")
