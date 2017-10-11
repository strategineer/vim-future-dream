""" Tagbar
call EnableTagBar()
""" Omnisharp
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

"This is the default value, setting it isn't actually necessary
let g:OmniSharp_host = "http://localhost:2000"

"Set the type lookup function to use the preview window instead of the status line
"let g:OmniSharp_typeLookupInPreview = 1

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
setlocal noshowmatch

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
setlocal completeopt=longest,menuone,preview

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
setlocal splitbelow

" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

"The following commands are contextual, based on the current cursor position.
nnoremap <unique> <buffer> gd :OmniSharpGotoDefinition<cr>
nnoremap <unique> <buffer> <leader>fu :OmniSharpFindUsages<cr>

" cursor can be anywhere on the line containing an issue
nnoremap <unique> <buffer> <leader>ci :OmniSharpFixIssue<cr>
nnoremap <unique> <buffer> <leader>cu :OmniSharpFixUsings<cr>
nnoremap <unique> <buffer> <leader>dc :OmniSharpDocumentation<cr>

" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <unique> <buffer> <leader>ca :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <unique> <buffer> <leader>ca :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <unique> <buffer> <leader>nm :OmniSharpRename<cr>

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <unique> <buffer> <leader>rl :OmniSharpReloadSolution<cr>

" this setting controls how long to wait (in ms) before fetching type / symbol information.
setlocal updatetime=500

""" Formatting
autocmd BufWritePre <buffer> :call CleanExtraSpaces()
