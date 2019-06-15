""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
autocmd BufWritePre <buffer> :call 0,$!yapf --style google
