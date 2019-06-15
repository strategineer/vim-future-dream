""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
autocmd BufWritePost <buffer> :call RunYapf()
