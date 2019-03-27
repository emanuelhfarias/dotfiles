call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'nelstrom/vim-visual-star-search'
Plug 'yggdroot/indentline'

" languages syntax
Plug 'leafgarland/typescript-vim'

" colorschemes
Plug 'jpo/vim-railscasts-theme'
Plug 'dracula/vim'
call plug#end()

set mouse=""

set number relativenumber

syntax on
color railscasts

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
set tabstop=2 shiftwidth=2 expandtab

" NERDTree Configs
map <C-n> :NERDTreeToggle<CR>

set list
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
