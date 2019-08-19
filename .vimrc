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

let g:airline#extensions#ale#enabled = 1      " ALE for airline


set splitbelow            " create new vsplit below current buffer
set splitright            " create new split right of current buffer

let g:netrw_liststyle = 1
let g:netrw_banner = 0

" Theme
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If youre using tmux version 2.2 or later, you can remove the outermost check and use tmuxs 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
 if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme molokai
