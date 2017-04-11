" editor settings
set list
set listchars=eol:↵,tab:.\ ,trail:·,extends:→,precedes:←

set t_Co=256
syntax on
syntax enable
set relativenumber
set background=dark
colorscheme monokai

" tabbing shortcuts
nnoremap <F8> :tabprevious<CR>
nnoremap <F9> :tabnext<CR>

" status line
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor 
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" NERDTree
"" shortcut
map <C-n> :NERDTreeToggle<CR>

"" open automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" close if only file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" dein settings
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
	call dein#add('~/.vim/dein/repos/github.com/vim-airline')

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
