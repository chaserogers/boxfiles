let mapleader = " "
nnoremap <leader>ll :source ~/.vimrc<CR>

" write file (save)
nnoremap <leader>w :w<cr>

" quit without saving
nnoremap <leader>q :q!<cr>

" quit and save
nnoremap <leader>x :x<cr>

" find next occurence of visual selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" move text after cursor to newline
nnoremap <leader>j i<cr><esc>

" insert newlines before and after cursor without leaving normal mode
nnoremap <Leader>o o<esc>
nnoremap <Leader>O O<esc>

"rg
nnoremap <leader>f :Rg<space>

" switch buffer by number
nnoremap <leader>b :ls<cr>:b

" fzf file searc
map <c-p> :Files<cr>

" <Ctrl-l> redraws the screen and removes any search highlighting.
" nnoremap <silent> <c-l> :nohl<CR><C-l>
nnoremap <silent> <c-l> /clearwithjibberishtextuusdfasdfavvasd<cr>

" open netrw
nnoremap <c-e> :Explore<cr>

" show full path of file
nnoremap <c-f> :echo expand('%:p')<cr>

" align with tabular
map <leader>tt :Tab /

" split creation
set splitright
nnoremap <leader>- :sp<cr>
set splitbelow
nnoremap <leader>\ :vsp<cr>

"split navigation
nnoremap <leader><down> <C-W><C-J>
nnoremap <leader><up> <C-W><C-K>
nnoremap <leader><right> <C-W><C-L>
nnoremap <leader><left> <C-W><C-H>

" Make Y yank till end of line
nnoremap Y yg_
