" Color Scheme
syntax on
colorscheme nord

" highlight cursor line in gutter
set cursorline
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Basic settings
set encoding=utf-8
set guifont=Office\ Code\ Pro:h15
set guioptions=
set lines=43 columns=100

" dont show mode under statusline as it isnt needed
set noshowmode

" put swapfiles elsewhere
set swapfile
set directory^=~/.vim/swapfiles//
set shortmess+=A

" set nowrap
set wrap
set nolinebreak
set nolist

set spr
set ea
set nocompatible
set backspace=2
set nu
set hlsearch

" show statusline everywhere
set laststatus=2

" stop this ridiculous folding
set nofoldenable

" enable scrolling in terminal vim
set mouse=a

" keep mouse in middle of screen while scrolling
set scrolloff=20

" change cursors between modes in terminal vim
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" time out on mapping after 0.5s, time out on key codes after 0.1s (fixes lag)
set timeout timeoutlen=500 ttimeoutlen=100

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Remove trailing spaces on save
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg='#400000'
match ExtraWhitespace /\s\+$/

" trim trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" indent and tabs
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" set paste toggle
set nopaste
set pastetoggle=<F3>

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype haml setlocal ts=2 sw=2 expandtab
autocmd Filetype slim setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype elixir setlocal ts=2 sw=2 expandtab
autocmd Filetype bash setlocal ts=2 sw=2 expandtab

" for js/coffee/jade/scss files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd FileType scss setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType sass setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
