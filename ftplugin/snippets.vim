" If you want to open it only if you're opening Vim with a supported file/cs,py,snippets use this instead:
autocmd VimEnter * nested :call tagbar#autoopen(1)
" The above is exactly what the Taglist plugin does if you set the Tlist_Auto_Open option, in case you want to emulate this behaviour.

" For opening Tagbar also if you open a supported file in an already running Vim:
autocmd FileType * nested :call tagbar#autoopen(0)

" If you use multiple tabs and want Tagbar to also open in the current tab when you switch to an already loaded, supported buffer:
autocmd BufEnter * nested :call tagbar#autoopen(0)

"And if you want to open Tagbar only for specific filetypes, not for all of the supported ones:
autocmd FileType * nested :TagbarOpen
