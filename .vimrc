" explicitly use vim rather than vi
set nocompatible
set packpath=$HOME/.vim/

" Core
set number
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set bs=2

filetype plugin indent on

" Packages
" packadd onedark.vim
" packadd! syntastic
packadd ale
packadd vim-airline

" ALE for airline
let g:airline#extensions#ale#enabled = 1

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
