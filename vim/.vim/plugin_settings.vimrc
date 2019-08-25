" enable ruby-matchit
runtime! macros/matchit.vim

" disable matchparen (default plugin)
let loaded_matchparen=1

" fzf settings
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_show_hidden = 1
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" let g:ctrlp_working_path_mode = 'ra'

" set max results of ctrlp to be scrollable up to 100
let g:ctrlp_match_window = 'results:40'

" Buffer Tabline (buftabline)
set hidden

" netrw tree view
let g:netrw_liststyle=3


" markdown preview
let vim_markdown_preview_hotkey='<c-m>'
let vim_markdown_preview_github=1

" use enter to select supertab completion
let g:SuperTabCrMapping = 1

" close ack quickfind window after selection
let g:ack_autoclose = 1

" disable deleting brackets in pair
let g:AutoPairsMapBS = 0
