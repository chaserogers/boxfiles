" Color Scheme
syntax on

" configure dracula color scheme before we set it
" let g:dracula_italic=0
" let g:dracula_bold=0
" let g:dracula_underline=0
" let g:dracula_undercurl=0
" let g:dracula_inverse=0

colorscheme nord

" highlight cursor line in gutter
" set cursorline
" highlight CursorLine term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" highlight CursorLineNr term=NONE cterm=NONE gui=bold guifg=#D8DEE9 guibg=#2E3440

" Basic settings
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono:h19
set guioptions=
set lines=45 columns=100

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

" set relative line numbers
set nu
" set rnu
set hlsearch

" show statusline everywhere
set laststatus=2

" stop this ridiculous folding
set nofoldenable

" enable scrolling in terminal vim
set mouse=a

" keep mouse in middle of screen while scrolling
set scrolloff=15

" use system clipboard
set clipboard=unnamed

" time out on mapping after 1s, time out on key codes after 0.1s (fixes lag)
set timeout timeoutlen=1100 ttimeoutlen=100

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Remove trailing spaces on save
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg='#400000'
match ExtraWhitespace /\s\+$/

" trim trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" close all quickfix windows after a selection is made
" autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>
autocmd FileType qf nmap <buffer> <cr> <cr>:lcl<cr>:cclose<cr>

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
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" for js/coffee/jade/scss files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd FileType scss setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType sass setlocal ts=4 sw=4 sts=0 expandtab
