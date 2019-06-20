""" Formatting
"" Set Tabs
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
autocmd BufWritePre <buffer> :call RunGoFmt()
