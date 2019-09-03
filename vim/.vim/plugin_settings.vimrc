" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" Buffer Tabline (buftabline)
set hidden

" netrw tree view
let g:netrw_liststyle=3

" markdown preview
let vim_markdown_preview_hotkey='<c-m>'
let vim_markdown_preview_github=1

" use enter to select supertab completion
let g:SuperTabCrMapping = 1

" disable deleting brackets in pair
let g:AutoPairs = {'(':')', '[':']', '{':'}'}
let g:AutoPairsMapBS = 0
