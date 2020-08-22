packloadall

filetype plugin indent on

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
call plug#begin('~/.vim/plugged')
Plug('https://github.com/pangloss/vim-javascript.git')
Plug('https://github.com/ap/vim-css-color.git')
Plug('https://github.com/lilydjwg/colorizer.git')
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug('mattn/emmet-vim')
Plug('https://github.com/ycm-core/YouCompleteMe.git')
Plug('https://github.com/tpope/vim-surround.git')
call plug#end()
 
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


