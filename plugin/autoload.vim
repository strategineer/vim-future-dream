
function! Grep(...)
    let cmd = join([&grepprg] + [join(a:000, ' ')], ' ')
    return system(cmd)
endfunction
command! -nargs=+ -complete=file_in_path Grep cexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path LGrep lgetexpr Grep(<f-args>)
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost cgetexpr cwindow
    autocmd QuickFixCmdPost lgetexpr lwindow
augroup END
