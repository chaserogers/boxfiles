let mapleader = ","
map <leader>ll :source ~/.vimrc<CR>

" ack
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

" switch buffers
map <leader>n :bp<cr>
map <leader>d :bd<cr>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
