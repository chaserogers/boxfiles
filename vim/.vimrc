call plug#begin('~/.vim/plugged')
Plug 'ddollar/nerdcommenter'
Plug 'vim-scripts/The-NERD-tree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'skalnik/vim-vroom'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages and Syntax
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
call plug#end()

" Color Scheme
syntax on
colorscheme Tomorrow

" Statusline
set statusline=
set statusline+=%6*\[%n]                                   "buffernr
set statusline+=%5*\ %<%F\                                 "File+path
set statusline+=%2*\ %{fugitive#statusline()}\             "Git branch
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\              "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                             "Colnr
set statusline+=%0*\ %y\                                   "FileType

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User6 guifg=#051d00  guibg=#7dcc7d gui=bold
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

" Basic settings
let mapleader = ","
map <leader>ll :source ~/.vimrc<CR>
set encoding=utf-8
set guifont=Hack:h14
set scrolloff=20
set swapfile
set dir=~/tmp
filetype indent on
set laststatus=2

" Set colored ruler at the 80th column
set colorcolumn=80

" Indentation, tabs, etc
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Relative line numbers
set nu
set rnu

function! NumberToggle()
  if(&relativenumber == 1)
    set rnu!
  else
    set rnu
  endif
endfunc

nnoremap <leader>nn :call NumberToggle()<cr>

" switch panes with arrow keys
nnoremap <silent> <D-S-Right> <c-w>l
nnoremap <silent> <D-S-Left> <c-w>h
nnoremap <silent> <D-S-Up> <c-w>k
nnoremap <silent> <D-S-Down> <c-w>j

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

" NERDtree settings
let NERDTreeShowHidden = 1
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeStatusline = "%0*\ [%n] <NERDtree>"

" Git Gutter settings
let g:gitgutter_enabled = 1
