" explicitly use vim rather than vi
set nocompatible
set packpath=$HOME/.vim/
set clipboard=unnamedplus

" Core
set number
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set bs=2

let g:netrw_keepdir=0

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

filetype plugin indent on

" Packages
packadd ale
packadd vim-airline
packadd fzf
packadd fzf.vim
packadd vim-hcl
packadd vim-polyglot

let g:airline#extensions#ale#enabled = 1      " ALE for airline

set splitbelow            " create new vsplit below current buffer
set splitright            " create new split right of current buffer

let g:netrw_liststyle = 1
let g:netrw_banner = 0

" map ctrl-i to executing alefix, will pick up fixers defined in ftplugin
nmap <silent> <C-I> :ALEFix<CR>       

let g:gruvbox_contrast_dark = "soft"
colorscheme gruvbox
