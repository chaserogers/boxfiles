" Color Scheme
syntax on
colorscheme deep-space

" Basic settings
set encoding=utf-8
set guifont=Office\ Code\ Pro:h17
set scrolloff=20
set swapfile
set dir=~/tmp
set shortmess+=A
set laststatus=2
set colorcolumn=81
set nowrap

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

" indent and tabs
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype haml setlocal ts=2 sw=2 expandtab
autocmd Filetype slim setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=2 sw=2 expandtab
autocmd Filetype elixir setlocal ts=2 sw=2 expandtab
autocmd Filetype bash setlocal ts=2 sw=2 expandtab

" for js/coffee/jade/scss files, 4 spaces
autocmd FileType scss setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType sass setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
