call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'janko/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'wincent/terminus'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages and Syntax
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'hashivim/vim-terraform'
Plug 'stephpy/vim-yaml'
Plug 'fatih/vim-go'
Plug 'tomlion/vim-solidity'

" colors and themes
Plug 'arcticicestudio/nord-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'mhartington/oceanic-next'
Plug 'ciaranm/inkpot'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'sjl/badwolf'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
