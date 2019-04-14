""" HACK Disable python syntax highlighting because it cause a delay (half a second?) when adding new lines
syntax off
""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
