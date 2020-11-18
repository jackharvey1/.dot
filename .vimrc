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
let mapleader = ","

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
packadd vim-jsx
packadd fugitive
packadd ack
:silent autocmd QuickFixCmdPost *grep* cwindow

let g:airline#extensions#ale#enabled = 1      " ALE for airline

" Press ctrl-c to toggle highlighting
let hlstate=1
nmap <silent> <C-C> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR>
" map ctrl-i to executing alefix, will pick up fixers defined in ftplugin
nmap <silent> <C-I> :ALEFix<CR>       
" map ctrl-n to execute cnext
nmap <silent> <C-N> :cnext<CR>       
nmap <silent> <C-P> :cprev<CR>
nmap <silent> - :E<CR>

set splitbelow            " create new vsplit below current buffer
set splitright            " create new split right of current buffer
nnoremap <silent> <leader>s :sp.<CR>
nnoremap <silent> <leader>v :vsp.<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>t :Tex<CR>
nnoremap <silent> <leader>i <C-w>:ALEFix<CR>

let g:netrw_liststyle = 0
let g:netrw_banner = 0

let g:gruvbox_contrast_dark = "soft"
colorscheme brogrammer
