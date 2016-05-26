call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'

"ruby stuff
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

"themes
Plug 'chriskempson/vim-tomorrow-theme'

call plug#end()

filetype on
syntax on
filetype plugin indent on

colorscheme Tomorrow-Night-Eighties

set guifont=Source\ Code\ Pro\ 12

set colorcolumn=90
set number

let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

"indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"do not use backup and swapfile
set nobackup
set noswapfile

"remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"search highlighting
set hlsearch

"move between open files faster
nnoremap <Leader><Leader> :e#<CR>

"match parenthesis
set showmatch

"use arrow-keys
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

"nerdtree confs
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" git gutter conf
let g:gitgutter_sign_column_always=1

"lightline conf
set laststatus=2
