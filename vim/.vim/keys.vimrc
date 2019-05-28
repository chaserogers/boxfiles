let mapleader = ","
map <leader>ll :source ~/.vimrc<CR>

" ack
cnoreabbrev Ack Ack!
nnoremap <leader>f :Ack!<Space>

" switch buffers
map <leader>p :bp<cr>
map <leader>n :bn<cr>

" <Ctrl-l> redraws the screen and removes any search highlighting.
" nnoremap <silent> <c-l> :nohl<CR><C-l>
nnoremap <silent> <c-l> /clearwithjibberishtextuusdfasdfavvasd<cr>

" open netrw
map <c-e> :Explore<cr>

" show full path of file
map <c-f> :echo expand('%:p')<cr>

" insert newline without leaving normal mode
nmap <c-o> o<Esc>

" align with tabular
map <leader>tt :Tab /
