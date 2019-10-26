let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'filename' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'filename': 'LightlineFilename',
    \ },
    \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''

  return filename . modified
endfunction

" set showtabline=2

" let g:lightline.tabline = {
"     \ 'left': [ [ 'tabs' ] ],
"     \ 'right': [ [ 'bufnum' ] ] }

" let g:lightline.mode_map = {
"     \ 'n' : 'N',
"     \ 'i' : 'I',
"     \ 'R' : 'R',
"     \ 'v' : 'V',
"     \ 'V' : 'VL',
"     \ "\<C-v>": 'VB',
"     \ 'c' : 'C',
"     \ 's' : 'S',
"     \ 'S' : 'SL',
"     \ "\<C-s>": 'SB',
"     \ 't': 'T',
"     \ }
