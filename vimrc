execute pathogen#infect()

filetype on
syntax on
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
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"move between open files faster
nnoremap <Leader><Leader> :e#<CR>

"match parenthesis
set showmatch

"use arrow-keys
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
