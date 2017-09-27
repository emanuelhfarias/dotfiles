call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryym/vim-riot'
Plug 'dracula/vim'

" TEST Plug 'vim-scripts/FuzzyFinder'
call plug#end()

set number

" TABS & Spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" NERDTree Configs
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

syntax on
color dracula

" Custom Defined Commands
command! Path let @+ = expand("%:p")
command! File let @+ = expand("#")

" highlight while searching
set incsearch

" add 80 columns mark
highlight ColorColumn ctermbg=gray
set colorcolumn=80
