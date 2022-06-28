augroup zprint
  autocmd! BufWritePre <buffer> call zprint#apply()
augroup END

command! -buffer Zprint call zprint#apply()

function! ZprintToggle()
    if !exists("#zprint#BufWritePre")
        augroup zprint
          autocmd! BufWritePre <buffer> call zprint#apply()
        augroup END

        command! -buffer Zprint call zprint#apply()
    else
        augroup zprint
            autocmd!
        augroup END
        delc -buffer Zprint
    endif
endfunction

command! -buffer ZprintToggle call ZprintToggle()
