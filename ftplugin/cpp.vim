""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()

autocmd! BufNewFile,BufRead */crawl-ref/* setlocal sw=4 et
