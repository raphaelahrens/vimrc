" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
    autocmd!
    " let terminal resize scale the internal windows

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

    autocmd FileType mail set spell
    autocmd FileType markdown set complete+=kspell
    autocmd VimResized * :wincmd =
    " Kill the capslock when leaving insert mode.
    autocmd InsertLeave * set iminsert=0
augroup END
