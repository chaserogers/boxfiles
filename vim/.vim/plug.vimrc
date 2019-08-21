call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'ap/vim-buftabline'
Plug 'ervandew/supertab'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jiangmiao/auto-pairs'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages and Syntax
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'hashivim/vim-terraform'

" colors and themes
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'mhartington/oceanic-next'
Plug 'ciaranm/inkpot'
Plug 'altercation/vim-colors-solarized'

call plug#end()

