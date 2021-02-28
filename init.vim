packloadall
filetype off
syntax on
syntax enable

let g:javascript_plugin_jsdoc = 1

set exrc
set noerrorbells
set relativenumber
set hidden
set nu
set cursorline
set incsearch
set noswapfile
set nobackup
set hlsearch
set scrolloff=8
set signcolumn=no
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wildmenu
set omnifunc=syntaxcomplete#Complete
set ttyfast
set nocompatible

""VIM PLUG CONFIG
call plug#begin('~/.vim/plugged')
Plug('junegunn/fzf'), {'do': { -> fzf#install() } }
Plug('junegunn/fzf.vim')
Plug('stsewd/fzf-checkout.vim')
Plug('https://github.com/pangloss/vim-javascript.git')
Plug('https://github.com/leafgarland/typescript-vim.git')
Plug('https://github.com/ap/vim-css-color.git')
Plug('https://github.com/lilydjwg/colorizer.git')
Plug('vim-utils/vim-man')
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug('mattn/emmet-vim')
Plug('Valloric/YouCompleteMe')
Plug('https://github.com/tpope/vim-surround.git')
Plug('tpope/vim-fugitive')
Plug('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')
Plug('mbbill/undotree')
call plug#end()

let g:airline_theme='night_owl'
""let g:airline_theme='dark_minimal'

let mapleader=" "

" FILE BROWSING:
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <C-k> :bprev<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-q> :bdelete<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Sex!<CR>

" for copying
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

fun! GoYCM() 
    nnoremap <buffer> <leader>gd :YcmCompleter GoTo<CR>
    nnoremap <buffer> <leader>gr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer> <leader>rr :YcmCompleter RefactorRename<space>
endfun

""fun! GoCoc() 
""    inoremap <buffer> <silent><expr> <TAB>
""      \ pumvisible() ? "\<C-n>" :
""      \ <SID>check_back_space() ? "\<TAB>" :
""      \ coc#refresh()
""    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""    inoremap <buffer> <silent><expr> <C-space> coc#refresh()
""
""    " Goto Code Navigation
""    nmap <buffer> <leader>gd <Plug>(coc-definition)
""    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
""    nmap <buffer> <leader>gi <Plug>(coc-implementation)
""    nmap <buffer> <leader>gr <Plug>(coc-references)
""    nnoremap <buffer> <leader>cr :CocRestart
""endfun


nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gc :GCheckout<CR>
nnoremap <c-p> :Files<cr>

autocmd Filetype typescript,typescriptreact :call GoYCM()
""autocmd Filetype cpp,cxx,h,hpp,c :call GoCoc()

let g:fzf_layout = {'window': { 'width' : 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

