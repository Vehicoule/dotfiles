let mapleader=" "
set encoding=utf8
syntax on
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set nocompatible "vimwiki
set expandtab
set cursorline
set noerrorbells
set autoindent
set cindent
set smartindent
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set incsearch
set spell
set omnifunc=syntaxcomplete#Complete
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP
set omnifunc=python3complete#CompletePython3
set showmatch
set hlsearch
set wildmenu
set backspace=indent,eol,start
set splitright
set splitbelow
set virtualedit=onemore
"set background=dark
set viminfo+=n~/.config/vim/.viminfo
set formatoptions-=cro
set termwinsize=10x0
colorscheme jake
cabbrev bterm bo term
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:term") && b:term.isTabTree()) | q | endif
"noremap :wq <C-d>:wq
"noremap :q <C-d>:q



let g:rehash256 = 1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0
let NERDTreeWinSize=25
let NERDTreeStatusline='%#NonText#'
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:NERDTreeWinPos = "right"
let python_highlight_all=1
"let g:fzf_layout = { 'down':'~40%' }
"          /---------/
" '-------/ VIMWIKI /---------------->
"        /---------/
"
let wiki_1 = {}
let wiki_1.path = '~/Documents/notes/wiki/'
let wiki_2 = {}
let wiki_2.path = '~/Documents/notes/wiki2/'
let wiki_3 = {}
let wiki_3.path = '~/Documents/notes/wiki3/'
let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]
let g:vimwiki_listsyms = '✗●✓'

iab pjp presley
iab teh the
"Allow crosshair cursor highlighting.
hi CursorColumn cterm=NONE ctermbg=0
nnoremap <Leader>c :set cursorcolumn!<CR>

"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/
"
"set background=dark
"function! ToggleBG()
"    let s:tbg = &background
"    if s:tbg == "dark"
"        set background=light
"    else
"        set background=dark
"    endif
"endfunction
"noremap <leader>bg :call ToggleBG()<CR>


"        /------------/
">>-----/    HTML    /------------>
"      /------------/
"
autocmd FileType html inoremap ;h1 <h1></h1><Esc>2b i
autocmd FileType html inoremap ;h2 <h2><</h2><Esc>2b i
autocmd FileType html inoremap ;p <p></p><Esc>2b i
autocmd FileType html inoremap ;d <!DOCTYPE html><Return>
autocmd FileType html inoremap ;h <head><Return><Return></head><UP>
autocmd FileType html inoremap ;m <meta/><Esc>2h i
autocmd FileType html inoremap ;s <strong></strong><esc>F> i



autocmd FileType sh inoremap ;s #!/bin/bash<Return>


autocmd FileType tex inoremap ;bd \begin{document}<Return>
autocmd FileType tex inoremap ;ed \end{document}<Return>
autocmd FileType tex inoremap ;d \documentclass{}<Esc> b i


"        /--------------/
">>-----/    REMAPS    /----------->
"      /--------------/


">>--------/ remap vim keys  /-------->

noremap j h
noremap k j
noremap l k
noremap ; l
"noremap :* :ALEDetail<Return>

inoremap sb #!/usr/bin/env bash<Return><Return># Created By: Jake@Linux<cmd>:pu=strftime('%c')<CR># Created On: <Esc>$ i<Return># Project: 
inoremap pb #!/usr/bin/env python3<Return><Return># Created By: Jake@Linux<cmd>:pu=strftime('%c')<CR># Created On: <Esc>$ i<Return># Project: 


">>--------/  autocomplete brac">>--------/  splits  /-------->
"
nnoremap <leader>vs <C-w>v
nnoremap <leader>ss <C-w>s
nnoremap <leader>cs <C-w>c
nnoremap - :res -5<CR>
nnoremap + :res +5<CR>
nnoremap ] :vertical res -5<CR>
nnoremap [ :vertical res +5<CR>

nnoremap <leader>g <cmd>G<CR>
nnoremap <leader>u <cmd>"1p<CR>
nnoremap <leader>t :term<CR>
nnoremap <leader>s :CtrlSF<CR>
cmap w!! w !sudo tee %
nnoremap <silent> <C-Up> :wincmd k<CR>
nnoremap <silent> <C-Down> :wincmd j<CR> 
nnoremap <silent> <C-left> :wincmd h<CR>
nnoremap <silent> <C-Right> :wincmd l<CR>
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nt <cmd>NERDTreeFind<cr>
map <C-z> :wq<CR>
nnoremap <leader>= <cmd>:%!bc -l<cr>
nnoremap <leader>ff <cmd>FZF<cr>
nnoremap <C-u> :UndotreeToggle<cr>
nnoremap <leader>UP :wincmd k<cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
if has("persistent_undo")
    set undodir=$HOME/.vim/undodir
    set undofile
endif
nnoremap <leader>mt :'<,'> ~/.local/scripts/VTable -t -hp 3<CR>

"        /---------------/
">>-----/    PLUGINS    /----------->
"      /---------------/
source $HOME/.config/vim/plugs.vim


source $HOME/.config/vim/status.vim
"source $HOME/.config/vim/status2.vim

