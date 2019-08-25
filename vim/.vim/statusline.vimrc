" configure lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineModified()
  let modified = &modified ? '*' : ''
  return modified
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? '[*]' : ''
  return filename . modified
endfunction

" " Statusline (custom)
" set statusline=
" set statusline+=%6*\[%n]                                   "buffernr
" set statusline+=%5*\ %<%F\                                 "File+path
" set statusline+=%2*\ [%{fugitive#head()}]\                 "Git branch
" set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\              "Rownumber/total (%)
" set statusline+=%9*\ col:%03c\                             "Colnr
" set statusline+=%0*\ %y\                                   "FileType

" function! HighlightSearch()
"   if &hls
"     return 'H'
"   else
"     return ''
"   endif
" endfunction

" hi User1 guifg=#ffdad8  guibg=#880c0e ctermfg=black  ctermbg=black
" hi User2 guifg=#000000  guibg=#F4905C ctermfg=black  ctermbg=yellow
" hi User3 guifg=#292b00  guibg=#f4f597 ctermfg=black  ctermbg=yellow
" hi User4 guifg=#112605  guibg=#aefe7B ctermfg=black  ctermbg=lightgreen
" hi User5 guifg=#051d00  guibg=#7dcc7d ctermfg=black  ctermbg=darkgreen
" hi User6 guifg=#051d00  guibg=#7dcc7d ctermfg=black  ctermbg=darkgreen gui=bold
" hi User7 guifg=#ffffff  guibg=#880c0e ctermfg=white  ctermbg=red gui=bold cterm=bold
" hi User8 guifg=#ffffff  guibg=#5b7fbb ctermfg=lightgray  ctermbg=darkmagenta
" hi User9 guifg=#ffffff  guibg=#810085 ctermfg=lightgray  ctermbg=darkred
" hi User0 guifg=#ffffff  guibg=#094afe ctermfg=lightgray  ctermbg=darkred

