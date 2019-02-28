if exists("b:current_syntax")
    finish
endif

syntax match todoDone "\v^x\s.*$"
syntax match todoDate "\v<[0-2][0-9]{3}-(0[1-9]|1[0-2])-[0-3][0-9]>" contained
syntax match todoIncomplete "\v^[^x].+$" contains=todoDate,todoLiteral,todoURL transparent
syntax match todoLiteral "\v`[^`]*`"
syntax match todoURL "https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*"

highlight link todoDone Comment
highlight link todoDate Constant
highlight link todoIncomplete String
highlight link todoLiteral Keyword
highlight link todoURL Keyword

let b:current_syntax = "todo"
