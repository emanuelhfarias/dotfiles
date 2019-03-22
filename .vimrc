call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'nelstrom/vim-visual-star-search'
Plug 'yggdroot/indentline'
" TEST Plug 'vim-scripts/FuzzyFinder'
call plug#end()

set mouse=""

set number
set relativenumber

syntax on
color dracula

" add 80 columns mark
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Custom Defined Commands
command! Path let @+ = expand("%:p")
command! File let @+ = expand("#")

" highlight while searching
set incsearch

" TABS & Spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" NERDTree Configs
map <C-n> :NERDTreeToggle<CR>

set list
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
