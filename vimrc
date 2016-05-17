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

"remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
