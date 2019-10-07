call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'nelstrom/vim-visual-star-search'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

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
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Custom Defined Commands
command! Path let @+ = expand("%:p")
command! File let @+ = expand("#")
command! Json %!python -m json.tool
command! Tags !ctags -R . --exclude=.git --exclude=venv --exclude=node_modules

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
let g:indentLine_leadingSpaceEnabled = 0

let g:better_whitespace_enabled=1

let g:airline_theme='deus'

let g:ctrlp_custom_ignore = '\v[\/](node_modules|venv)|(\.(swp|git|svn))$'
