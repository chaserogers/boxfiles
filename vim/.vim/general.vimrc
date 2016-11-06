" Color Scheme
syntax on
colorscheme Tomorrow-Night

" Basic settings
set encoding=utf-8
set guifont=Hack:h14
set scrolloff=20
set swapfile
set dir=~/tmp
filetype indent on
set laststatus=2
set colorcolumn=80
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

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Trailing whitespace
set listchars=tab:>-,trail:-
set list
