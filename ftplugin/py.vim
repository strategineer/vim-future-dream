""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :normal gg=G
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
