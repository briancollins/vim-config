" no vi compatibility
set nocompatible

" Show position in file
set ruler

" Show line numbers
set number

" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" Use 2 spaces for tabs, turn on automatic indenting
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent

" Import plugins from bundles directory
call pathogen#runtime_append_all_bundles()

set nobackup
set directory^=$HOME/.vim_swap//


" Turn on highlighted search and syntax highlighting
set hlsearch
set incsearch
syntax on

" Set leader to comma
let mapleader = ","

" CommandT mapped to command + k
map <D-k> :CommandT<CR>

" Set up command for NERDTree
map <leader>n :NERDTree<CR>
map <leader>r :NERDTreeFind<CR>

" Make backspace work the way it should
set backspace=2

" Make backspace and cursor keys wrap accordingly
set whichwrap+=<,>,h,l

" Make searches case-insensitive
set ignorecase

" Make editing .vimrc easier
map <leader>v :sp $MYVIMRC<CR>
map <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>R :sp ~/commands-to-remember<CR>

" Generate a tags file in the current directory using Exuberant ctags
map <leader>e :silent :! ctags --recurse --sort=yes;sort tags > tmptags;mv tmptags tags<CR>:exe ":echo 'tags generated'"<CR>

filetype plugin indent on

" Enable omni completion
set ofu=syntaxcomplete#Complete

map <leader>a :Ack<space>

" Add a status line by default
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set laststatus=2
" Session saving
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters *********************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist
map ,i :set list!<CR> " Toggle invisible chars"

