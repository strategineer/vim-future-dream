""" TagBar
fun! EnableTagBar()
    "And if you want to open Tagbar only for specific filetypes, not for all of the supported ones:
    " TagbarOpen
endfun

""" TicComputer
fun! EnableTicComputer()
    nnoremap <buffer> <silent> <leader>tt :!tic %:r.tic -code %<CR>
endfun

""" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

""" Code Formatters
fun! RunYapf()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    silent! 0,$!yapf --style pep8
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

fun! RunGoFmt()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    silent! 0,$!gofmt
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

fun! RunRustFmt()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    silent! 0,$!rustfmt
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
