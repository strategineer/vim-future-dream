""" Mappings
nmap <buffer> X <Plug>VimwikiToggleListItem
nmap <buffer> <SPACE> <Plug>VimwikiFollowLink
nmap <buffer> <C-SPACE> <Plug>VimwikiGoBackLink

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
