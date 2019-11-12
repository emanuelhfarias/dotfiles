call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'nelstrom/vim-visual-star-search'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/syntastic'

" languages syntax
Plug 'leafgarland/typescript-vim'

" colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'jpo/vim-railscasts-theme'
Plug 'dracula/vim'
call plug#end()

" ============================= Basic VIM Settings ============================
syntax on
set mouse=""
set number relativenumber

" highlight while searching
set incsearch

" TABS & Spaces
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab

" add 80 columns mark
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Custom Defined Commands
command! Path let @+ = expand("%:p")
command! File let @+ = expand("#")
command! Json %!python -m json.tool
command! Tags !ctags -R . --exclude=.git --exclude=venv --exclude=node_modules --exclude=db


" ============================== Plugins Settings =============================
set background=dark
colorscheme PaperColor
"color railscasts

let g:airline_theme='deus'

" fzf shortcuts
:noremap <c-p> :Files<cr>
:noremap <c-b> :Buffers<cr>

" indentLine plugin Settings
set list
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:better_whitespace_enabled=1

" ctrp-p plugin Settings
let g:ctrlp_custom_ignore = '\v[\/](node_modules|venv)|(\.(swp|git|svn))$'

" Syntastic plugin Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

