""" AutoCompile
autocmd BufWritePost <buffer> nested :VimtexCompileSS

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
