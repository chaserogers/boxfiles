" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

" Buffer Tabline (buftabline)
set hidden

" better markdown folding
" let g:markdown_folding = 0

" netrw tree view
let g:netrw_liststyle=3

" configure lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filename', 'gitbranch' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" markdown preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1
