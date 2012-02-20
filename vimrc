set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

Bundle "https://github.com/briancollins/Command-T.git"
Bundle "https://github.com/vim-ruby/vim-ruby.git"
Bundle "https://github.com/tpope/vim-rails.git"
Bundle "https://github.com/mileszs/ack.vim.git"
Bundle "https://github.com/edsono/vim-matchit.git"
Bundle "https://github.com/nanotech/jellybeans.vim.git"
Bundle "https://github.com/tpope/vim-ragtag.git"
Bundle "https://github.com/scrooloose/nerdtree.git"
Bundle "https://github.com/msanders/snipmate.vim.git"
Bundle "https://github.com/tpope/vim-fugitive.git"
Bundle "https://github.com/xoebus/vim-gitcd"
Bundle "https://github.com/msanders/cocoa.vim.git"
Bundle "https://github.com/briancollins/vim-jst.git"
Bundle "https://github.com/vim-scripts/nginx.vim.git"
Bundle "https://github.com/kana/vim-textobj-user.git"
Bundle "https://github.com/nelstrom/vim-textobj-rubyblock.git"
Bundle "https://github.com/hallettj/jslint.vim.git"
Bundle "https://github.com/Rip-Rip/clang_complete.git"
Bundle "https://github.com/tpope/vim-surround.git"
Bundle "https://github.com/tpope/vim-repeat"
Bundle "https://github.com/kchmck/vim-coffee-script.git"
Bundle "https://github.com/kingbin/vim-arduino.git"
Bundle "https://github.com/vim-scripts/JavaScript-Indent.git"
Bundle "https://github.com/vim-scripts/python.vim.git"

let $JS_CMD='node'

" no vi compatibility
set nocompatible

scriptencoding utf-8
set encoding=utf-8
" Show position in file
set ruler

" Show line numbers
set number

" Command to remove search highlights
nnoremap <C-L> :nohl<CR><C-L>

set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" No swap files or backups
set nobackup
set nowritebackup
set noswapfile

" Turn on highlighted search and syntax highlighting
set hlsearch
set incsearch
syntax on

" Set leader to comma
let mapleader = ","

" CommandT mapped to command + k
map <D-k> :CommandT<CR>
map <leader>k :CommandTFlush<CR>

" Set up command for NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>

" Make backspace work the way it should
set backspace=2

" Make backspace and cursor keys wrap accordingly
set whichwrap+=<,>,h,l

" Make searches case-insensitive
set ignorecase
set smartcase

" Make editing .vimrc easier
map <leader>v :sp $MYVIMRC<CR>
map <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Generate a tags file in the current directory using Exuberant ctags
map <leader>e :silent :! ctags --recurse --sort=yes;sort tags > tmptags;mv tmptags tags<CR>:exe ":echo 'tags generated'"<CR>

filetype plugin indent on

" Enable omni completion
set ofu=syntaxcomplete#Complete

" Detect nginx.conf
au BufNewFile,BufRead nginx.conf set filetype=nginx.conf
au BufNewFile,BufRead *.m        set filetype=objc

map <leader>a :Ack<space>

" Session saving
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters
set listchars=tab:▸\ ,eol:¬
set nolist
map <leader>i :set list!<CR> " Toggle invisible chars"

" Escape insert mode with ctrl-s
imap <c-s> <Esc>

" Textmate style indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Settings for VimClojure
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1

if exists("$MYGVIMRC")
  source $MYGVIMRC 
endif

" Scroll when cursor is n lines from top or bottom
set scrolloff=8

set noeol
set binary

set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent
