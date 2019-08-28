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
