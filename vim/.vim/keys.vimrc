let mapleader = ","
map <leader>ll :source ~/.vimrc<CR>
map <C-n> :NERDTreeToggle<CR>

" toggle relative line numbers
nnoremap <leader>nn :call numbertoggle()<cr>

" switch panes with arrow keys
nnoremap <silent> <D-S-Right> <c-w>l
nnoremap <silent> <D-S-Left> <c-w>h
nnoremap <silent> <D-S-Up> <c-w>k
nnoremap <silent> <D-S-Down> <c-w>j

" enter new lines above and below cursor from middle of text
nmap <D-S-Enter> O<Esc>
nmap <D-Enter> o<Esc>
imap <D-S-Enter> <Esc>O
imap <D-Enter> <Esc>o

" buffer keys
nnoremap <D-]> :bnext<CR>
nnoremap <D-[> :bprev<CR>
nnoremap <Leader>bd :bp\|bd #<CR>
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>

nmap <D-1> <Plug>BufTabLine.Go(1)
nmap <D-2> <Plug>BufTabLine.Go(2)
nmap <D-3> <Plug>BufTabLine.Go(3)
nmap <D-4> <Plug>BufTabLine.Go(4)
nmap <D-5> <Plug>BufTabLine.Go(5)
nmap <D-6> <Plug>BufTabLine.Go(6)
nmap <D-7> <Plug>BufTabLine.Go(7)
nmap <D-8> <Plug>BufTabLine.Go(8)
nmap <D-9> <Plug>BufTabLine.Go(9)
nmap <D-0> <Plug>BufTabLine.Go(10)

" search and replace
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" ack
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>
