""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
autocmd BufWritePre <buffer> :!yapf -i --style google %
