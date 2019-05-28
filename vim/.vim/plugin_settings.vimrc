" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'

" set max results of ctrlp to be scrollable up to 100
let g:ctrlp_match_window = 'results:40'

" Buffer Tabline (buftabline)
set hidden

" netrw tree view
let g:netrw_liststyle=3

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
  let modified = &modified ? ' *' : ''
  return filename . modified
endfunction

" markdown preview
let vim_markdown_preview_hotkey='<c-m>'
let vim_markdown_preview_github=1

" use enter to select supertab completion
let g:SuperTabCrMapping = 1
