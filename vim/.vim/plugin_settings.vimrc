" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

" NERDtree settings
" hide nerdtree on start
" let g:NERDTreeHijackNetrw=0
" show nerdtree on start
" let NERDTreeShowHidden = 1
" autocmd StdinReadPre * let s:std_in = 1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * wincmd p
" let NERDTreeStatusline = "%0*\ [%n] <NERDtree>"

" Buffer Tabline (buftabline)
set hidden
" set ordinal numbers for buffer tabs
let g:buftabline_numbers = 0
let g:buftabline_separators = 1

" better markdown folding
let g:markdown_folding = 0

" netrw tree view
let g:netrw_liststyle=3
