""" Mappings
nmap <buffer> <SPACE> <ENTER>
nmap <buffer> <c-SPACE> <BS>

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
