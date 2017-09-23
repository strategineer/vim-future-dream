""" AutoCompile
autocmd BufWrite <buffer> :VimtexCompileSS

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
