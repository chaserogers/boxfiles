" Color Scheme
syntax on
colorscheme deep-space

" Basic settings
set encoding=utf-8
set guifont=Office\ Code\ Pro:h17
set scrolloff=20
set swapfile
set dir=~/tmp
filetype indent on
set laststatus=2
set colorcolumn=81
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

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg='#400000'
match ExtraWhitespace /\s\+$/
