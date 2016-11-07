" Color Scheme
syntax on
colorscheme deep-space

" Basic settings
set encoding=utf-8
set guifont=Hack:h14
set scrolloff=20
set swapfile
set dir=~/tmp
filetype indent on
set laststatus=2
set colorcolumn=81
" highlight OverLength guibg=#222222
" match OverLength /\%>80v.\+/
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

if has("gui_running")
  autocmd VimLeave * :!open -a iTerm
endif
