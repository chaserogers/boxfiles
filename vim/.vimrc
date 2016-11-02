call plug#begin('~/.vim/plugged')
" Make sure to use single quotes!
Plug 'ddollar/nerdcommenter'
Plug 'vim-scripts/The-NERD-tree'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages and Syntax
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'

" Color Schemes
Plug 'flazz/vim-colorschemes'
call plug#end()

" Color Scheme
syntax on
colorscheme strange

" Basic settings
set number
set guifont=Hack:h14
set scrolloff=25

" Tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Trailing whitespace
set listchars=tab:>-,trail:-
set list

" NERDtree settings
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

runtime macros/matchit.vim
