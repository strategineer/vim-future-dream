""" TagBar
fun! EnableTagBar()
    "And if you want to open Tagbar only for specific filetypes, not for all of the supported ones:
    TagbarOpen
endfun

""" TicComputer
fun! EnableTicComputer()
    nnoremap <leader>tt :!tic -code %<CR>
endfun

""" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
