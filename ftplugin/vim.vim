""" Set folding
setlocal foldmethod=expr
setlocal foldlevel=0
setlocal foldexpr=getline(v:lnum)=~'^\"\"'?'>'.(matchend(getline(v:lnum),'\"\"*')-2):'='

""" Tagbar
call EnableTagBar()
""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
