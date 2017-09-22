""" Mappings
unmap <SPACE>
nnoremap <silent><buffer> <SPACE> <Plug>VimwikiFollowLink

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
