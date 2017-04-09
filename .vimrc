set list
set listchars=eol:↵,tab:.\ ,trail:·,extends:→,precedes:←

set t_Co=256
syntax on
syntax enable
set background=dark
colorscheme monokai

if &compatible
	set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
	call dein#begin('~/.vim/dein')

	call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('~/.vim/dein/repos/github.com/vim-javascript-syntax')
	call dein#add('~/.vim/dein/repos/github.com/NERD_tree')

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
