call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'Shougo/neocomplete.vim'

"ruby stuff
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-haml'
Plug 'skalnik/vim-vroom'
Plug 'tomtom/tcomment_vim'
Plug 'ngmy/vim-rubocop'

"themes
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'jpo/vim-railscasts-theme'

call plug#end()

filetype on
syntax on
filetype plugin indent on

colorscheme railscasts

set guifont=Meslo\ 12

set colorcolumn=90
set number

let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

"indentation
filetype indent on
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"filetype specific stuff
autocmd FileType ruby setlocal tabstop=2
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2
autocmd FileType ruby setlocal commentstring=#\ %s
autocmd FileType python setlocal commentstring=#\ %s

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
set signcolumn=yes

let python_highlight_all=1

"lightline conf
set laststatus=2

"neocomplete
let g:neocomplete#enable_at_startup = 1
