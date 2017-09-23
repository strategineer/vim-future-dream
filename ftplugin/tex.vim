""" AutoCompile
autocmd BufWritePost <buffer> :VimtexCompile

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
