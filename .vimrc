packloadall

filetype off

syntax on
syntax enable

let g:javascript_plugin_jsdoc = 1

set relativenumber
set cursorline
set incsearch
set hlsearch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set omnifunc=syntaxcomplete#Complete
set ttyfast
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required


""VIM PLUG CONFIG
call plug#begin('~/.vim/plugged')
Plug('https://github.com/pangloss/vim-javascript.git')
Plug('https://github.com/ap/vim-css-color.git')
Plug('https://github.com/lilydjwg/colorizer.git')
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug('mattn/emmet-vim')
Plug('Valloric/YouCompleteMe')
Plug('https://github.com/tpope/vim-surround.git')
call plug#end()

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
 
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

""shortcuts to make and run c++ files
autocmd FileType cpp nnoremap     <leader>rm    :!g++ -g --std=c++11 % -o %:r<CR>
" autocmd FileType cpp nnoremap   <leader>rm    :set makeprg=g++<CR>:make % -o %:r<CR>
autocmd FileType cpp nnoremap     <leader>rr    :!./%:r<CR>
autocmd FileType cpp nnoremap     <leader>rt    :!for f in %:r.*.test; do echo "TEST: $f"; ./%:r < $f; done<CR>

autocmd BufNewFile *.cpp -r ~/cp/template.cpp


