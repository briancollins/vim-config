" no vi compatibility
set nocompatible

scriptencoding utf-8
set encoding=utf-8
" Show position in file
set ruler

" Show line numbers
set number

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

" Make editing .vimrc easier
map <leader>v :sp $MYVIMRC<CR>
map <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>R :sp ~/commands-to-remember<CR>

" Generate a tags file in the current directory using Exuberant ctags
map <leader>e :silent :! ctags --recurse --sort=yes;sort tags > tmptags;mv tmptags tags<CR>:exe ":echo 'tags generated'"<CR>

filetype plugin indent on

" Enable omni completion
set ofu=syntaxcomplete#Complete

" Detect nginx.conf
au BufNewFile,BufRead nginx.conf set filetype=nginx.conf

map <leader>a :Ack<space>

" Session saving
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters
set listchars=tab:▸\ ,eol:¬
set nolist
map <leader>i :set list!<CR> " Toggle invisible chars"

" Open terminal
map <leader>t :ConqueTermVSplit zsh<CR>

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

function! SuperCleverTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<Tab>"
  else
    if &omnifunc != ''
      return "\<C-X>\<C-O>"
    elseif &dictionary != ''
      return "\<C-K>"
    else
      return "\<C-N>"
    endif
  endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>

" Scroll when cursor is n lines from top or bottom
set scrolloff=8

