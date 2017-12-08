" editor settings
set list
set listchars=eol:↵,tab:.\ ,trail:·,extends:→,precedes:←

set encoding=utf8
"fix backspacing issues
set backspace=indent,eol,start

" using vim-plug
call plug#begin('~/.vim/plugged')
    "colour schemes
    "Plug 'yuttie/hydrangea-vim'
    "Plug 'jdkanani/vim-material-theme'
    Plug 'altercation/vim-colors-solarized'

    Plug 'vim-airline/vim-airline-themes'

    Plug 'scrooloose/nerdtree'

    "syntax highlighting
    Plug 'neovim/node-host', { 'build': 'npm install' }
    Plug 'billyvg/tigris.nvim', { 'build': './install.sh' }

    "linting
    Plug 'vim-syntastic/syntastic'
    "only look for local eslint
    Plug 'mtscout6/syntastic-local-eslint.vim'
    " prettier
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }

    "status bar
    Plug 'vim-airline/vim-airline'

    "graphql syntax highlighting
    Plug 'jparise/vim-graphql'

    Plug 'flowtype/vim-flow', {
            \ 'autoload': {
            \     'filetypes': 'javascript'
            \ },
            \ 'build': {
            \     'mac': 'npm install -g flow-bin',
            \     'unix': 'npm install -g flow-bin'
            \ }}

    Plug 'ryanoasis/vim-devicons'
call plug#end()

set t_Co=256
syntax on
syntax enable
set relativenumber
set background=dark

colorscheme monokai
let g:solarized_termtrans = 1
let g:airline_theme='solarized'

set guifont=Cousine:h11
set hlsearch

let g:airline_powerline_fonts = 1

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

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"don't grep node_modules
set wildignore+=src/node_modules
set wildignore+=node_modules
set wildignore+=/Users/**/node_modules/** "disgusting hack

"" open automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

if exists("webdevicons#refresh")
    call webdevicons#refresh()
endif
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" NERDTree config
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.swp$', '\.swo$']
