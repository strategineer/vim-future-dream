""" Mappings
nmap <buffer> X <C-SPACE>
nmap <buffer> <SPACE> <ENTER>
nmap <buffer> <C-SPACE> <BS>

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
