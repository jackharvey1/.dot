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

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

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

" using vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'

    "syntax highlighting
    Plug 'neovim/node-host', { 'build': 'npm install' }
    Plug 'billyvg/tigris.nvim', { 'build': './install.sh' }

    "linting
    Plug 'vim-syntastic/syntastic'
    "only look for local eslint
    Plug 'mtscout6/syntastic-local-eslint.vim'


    "status bar
    Plug 'vim-airline/vim-airline'
call plug#end()

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call rename()<cr>

filetype plugin indent on
