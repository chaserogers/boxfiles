let mapleader = " "
map <leader>ll :source ~/.vimrc<CR>

" write file (save)
map <leader>w :w<cr>

" quit without saving
map <leader>q :q!<cr>

" quit and save
map <leader>x :x<cr>

" move text after cursor to newline
map <leader>j i<cr><esc>

" insert newlines before and after cursor without leaving normal mode
nnoremap <Leader>o o<esc>
nnoremap <Leader>O O<esc>

"rg
nnoremap <leader>f :Rg<space>

" switch to preview buffer or next buffer
map <leader>p :bp<cr>
map <leader>n :bn<cr>

" switch buffer by number
map <leader>b :ls<cr>:b

" fzf file searc
map <c-p> :Files<cr>

" <Ctrl-l> redraws the screen and removes any search highlighting.
" nnoremap <silent> <c-l> :nohl<CR><C-l>
nnoremap <silent> <c-l> /clearwithjibberishtextuusdfasdfavvasd<cr>

" open netrw
map <c-e> :Explore<cr>
map <c-v> :Lexplore<cr>

" show full path of file
map <c-f> :echo expand('%:p')<cr>

" align with tabular
map <leader>tt :Tab /
