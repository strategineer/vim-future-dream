""" AutoCompile
autocmd BufWritePost <buffer> :VimtexCompileSS

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
