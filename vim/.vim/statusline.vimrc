let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'absolutepath' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'filename': 'LightlineFilename',
    \   'project': 'ProjectRoot',
    \ },
    \ 'mode_map': {
    \   'n' : 'NORM',
    \   'i' : 'INS',
    \   'R' : 'REP',
    \   'v' : 'VIS',
    \   'V' : 'VLI',
    \   "\<C-v>": 'VBL',
    \   'c' : 'C',
    \   's' : 'S',
    \   'S' : 'SL',
    \   "\<C-s>": 'SB',
    \   't': 'T',
    \ },
    \ }

function! ProjectRoot()
  return fnamemodify(get(b:, 'git_dir'), ':h')
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''

  return filename . modified
endfunction


" dont show mode under statusline as it isnt needed
set noshowmode
