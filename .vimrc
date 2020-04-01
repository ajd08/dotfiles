filetype on
filetype plugin on
filetype plugin indent on

syntax on
syntax enable

set relativenumber
set cursorline
set incsearch
set hlsearch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set omnifunc=syntaxcomplete#Complete

set ttyfast

call plug#begin('~/.vim/autoload')
Plug('https://github.com/pangloss/vim-javascript.git')
Plug('https://github.com/ap/vim-css-color.git')
Plug('https://github.com/lilydjwg/colorizer.git')
call plug#end()

