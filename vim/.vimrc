call plug#begin('~/.vim/plugged')
" Make sure to use single quotes!
Plug 'ddollar/nerdcommenter'
Plug 'vim-scripts/The-NERD-tree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'

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
colorscheme cave-tweak

" Basic settings
map <leader>rr :source ~/.vimrc<CR>
set encoding=utf-8
set number
set guifont=Hack:h14
set scrolloff=8
set swapfile
set dir=~/tmp
filetype indent on

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Trailing whitespace
set listchars=tab:>-,trail:-
set list

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'ca'

" air-line
let g:airline_theme='base16_atelierheath'
set showtabline=2
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ':'

" NERDtree settings
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Git Gutter settings
let g:gitgutter_enabled = 0

