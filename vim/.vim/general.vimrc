" Color Scheme
syntax on
colorscheme deep-space

" Basic settings
set encoding=utf-8
set guifont=Office\ Code\ Pro:h15
set guioptions=
set scrolloff=20
set swapfile
set dir=~/.tmp
set lines=45
set columns=90
set directory=~/.vim/swapfiles//
set shortmess+=A
set laststatus=2
set nowrap
set spr
set ea
set nocompatible
set backspace=2

set hlsearch
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" use system keyboard by default
set clipboard=unnamed

" Relative line numbers
set nu

function! NumberToggle()
  if(&relativenumber == 1)
    set rnu!
  else
    set rnu
  endif
endfunc

" Remove trailing spaces on save
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

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

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

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
