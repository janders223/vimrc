setlocal tabstop=2 shiftwidth=2
setlocal makeprg=terraform\ validate

augroup TerraformValidate
    autocmd!
    autocmd BufWritePost *.tf silent make! | silent redraw!
    autocmd QuickFixCmdPost [^l]* cwindow
augroup END
