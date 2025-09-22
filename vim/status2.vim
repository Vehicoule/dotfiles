set laststatus=2
set noshowmode

set statusline+=\ %{mode()}\ 
set statusline+=%2*\ %l
set statusline+=\ <<
set statusline+=\ %F\ %*
set statusline+=%2*\ >>
"set statusline+=\ %2*\ %F
set statusline+=\ %1*\ <<%{getbufvar(bufnr('%'),'&mod')?'Modified':'Saved'}>>
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %1*\ <<
set statusline+=\ Line:\ %l
set statusline+=\ Col:\ %c
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ >>



augroup BgHighlight
    autocmd!
    autocmd WinEnter * set colorcolumn=80
    autocmd WinLeave * set colorcolumn=0
augroup END

"hi statusline ctermbg=8  ctermfg=10
"hi User2 ctermbg=8  ctermfg=10


function! ModifiedColor()
    if &mod == 1
        hi statusline ctermfg=0 ctermbg=4
    else
        hi statusline ctermfg=0  ctermbg=30
    endif
endfunction

au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
hi statusline ctermfg=0 ctermbg=10

