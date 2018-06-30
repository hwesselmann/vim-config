call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-grepper'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'ryanoasis/vim-devicons'

"ruby plugins
Plug 'roxma/ncm-rct-complete'
Plug 'tpope/vim-bundler'
Plug 'rainerborene/vim-reek'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-haml'
Plug 'skalnik/vim-vroom'
Plug 'tomtom/tcomment_vim'
Plug 'ngmy/vim-rubocop'

"JavaScript plugins
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

"themes
Plug 'jpo/vim-railscasts-theme'
Plug 'dracula/vim'

call plug#end()

color dracula
"set guifont=SauceCodePro\ Nerd\ Font\ 11
set guifont=DroidSansMono\ Nerd\ Font\ 11
set guiheadroom=0

set encoding=utf8
set nomodeline
set nowrap
  autocmd FileType markdown setlocal wrap
set undolevels=100
set clipboard=unnamedplus

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

set conceallevel=1
set noerrorbells

set number
set hlsearch
set scrolloff=1
set sidescrolloff=5

let mapleader="\<SPACE>"

set mouse=r

filetype on
syntax on
filetype plugin indent on

set colorcolumn=80
set hidden
set history=100

filetype indent on

"do not use backup and swapfiles
set nobackup
set noswapfile

"remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"match parenthesis
set showmatch

"git gutter conf
set signcolumn=yes

" enable all Python syntax highlighting features
let python_highlight_all = 1

"use arrow keys to resize panes
"nnoremap <Left> :vertical resize -1<CR>
"nnoremap <Right> :vertical resize +1<CR>
"nnoremap <Up> :resize -1<CR>
"nnoremap <Down> :resize +1<CR>

"disable arrow keys in insert mode
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

"working with buffers
nmap <Leader><Leader> <c-^>
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

let g:indentLine_enabled = 1
let g:indentLine_char = "|"

"airline config
let g:airline#extensions#tabline#enable=1
let g:airline_powerline_fonts=1
set laststatus=2

"CtrlP
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

"Grepper
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

" nvim-completion-manager
set shortmess+=c

"sneak
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

"nerdtree config
let NERDTreeMapActiveNode='<right>'
let NERDTReeShowHidden=1
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>j :NERDTreeFind<CR>

"tagbar activation
nmap <F8> :TagbarToggle<CR>

set pyxversion=3

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
