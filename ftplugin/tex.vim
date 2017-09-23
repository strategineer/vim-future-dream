""" AutoCompile
autocmd BufWritePre <buffer> :VimtexCompile
autocmd BufWritePre <buffer> :VimtexCompile

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
