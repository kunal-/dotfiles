" vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" All of your Plugins must be added before the following line
Plugin 'guns/vim-clojure-static'
Plugin 'kein/rainbow-parentheses.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
filetype indent on
set hlsearch
set ai
set si
set backspace=2
syntax on
nnoremap t :tabe
nnoremap J :tabp<CR>
nnoremap K :tabn<CR>
nnoremap <C-j> J
nnoremap <C-k> K
inoremap <c-bs> <c-w>
set nu
set ic

"Set textwidth to 80 set 0 to disable.
"au FileType text set wm=2 |set tw=8 |setlocal spell
inoremap <f1> nop
nnoremap <f1> nop
nnoremap Y y$


" Don't expand tabs in Makefile
autocmd FileType make setlocal noexpandtab

set paste
