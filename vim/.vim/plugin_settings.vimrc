" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" Buffer Tabline (buftabline)
set hidden
let g:buftabline_show=0

" netrw tree view
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_winsize=-30

" markdown preview
let vim_markdown_preview_hotkey='<c-m>'
let vim_markdown_preview_github=1

" use enter to select supertab completion
let g:SuperTabCrMapping = 1

" disable deleting brackets in pair
let g:AutoPairs = {'(':')', '[':']', '{':'}'}
let g:AutoPairsMapBS = 0

let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_sign_error = '--'
let g:ale_sign_warning = '--'

nmap <silent> <c-k> <Plug>(ale_previous_wrap)
nmap <silent> <c-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
