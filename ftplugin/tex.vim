""" AutoCompile
autocmd BufWritePre <buffer> :VimtexCompile :VimtexCompile
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
