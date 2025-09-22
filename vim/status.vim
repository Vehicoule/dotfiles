" status bar colors
"au InsertEnter * hi statusline ctermfg=black ctermbg=green
"au InsertLeave * hi statusline ctermfg=black =d"hi statusline ctermfg=black ctermbg=red
"hi VisualColor ctermfg=black ctermfg=196

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ "\<C-V>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                " Buffer number
set statusline+=%0*\ %<%F\ %m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

 augroup BgHighlight
     autocmd!
     autocmd WinEnter * set colorcolumn=80
     autocmd WinLeave * set colorcolumn=0
 augroup END
 
 "hi statusline ctermbg=8  ctermfg=10
 "hi User2 ctermbg=8  ctermfg=10

 function! ModifiedColor()
     if &mod == 1
         hi statusline ctermfg=red ctermbg=0
     else
         hi statusline ctermfg=cyan  ctermbg=0
     endif
 endfunction
 
au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
 " default the statusline when entering Vim
hi statusline ctermfg=0 ctermbg=cyan

"hi User1 ctermfg=black ctermbg=white
"hi User2 ctermfg=10 ctermbg=20 
"hi User3 ctermfg=9 ctermbg=11 
"hi User4 ctermfg=239 ctermbg=239 
"hi User5 ctermbg=white ctermfg=black

