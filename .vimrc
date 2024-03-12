set ic
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set nu
set tabstop=4
nnoremap Y y$
vnoremap . %
vnoremap K k
"c+backspace to delete words
inoremap <c-bs> <c-w>
"nnoremap <CR> i<CR><Esc>$
set smartcase

"stop command mode annoyance
nnoremap <F1> <nop>
nnoremap Q <nop>
"nnoremap <C-k> K
nnoremap <C-k> <nop>

"wrap after 80
"set tw=80 wm=2

"Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
"Make Command line two lines high
set ch=2
"set auto indentation
set ai
set ts=4


nnoremap <C-j> J
nnoremap t :tabe


nnoremap J :tabp<CR>
nnoremap K :tabn<CR>
set paste


" Don't expand tabs in Makefile
autocmd FileType make setlocal noexpandtab

" Good for vim diff
"colorscheme peachpuff

"set binaries path for fzf
"set rtp+=~/tools/
" - window at the left corner vim 9.1
let g:fzf_layout = { 'down': '40%' }
" load fzf
source ~/.vim/fzf.vim
" use c-f to invoke fzf
nnoremap <C-f> :FZF<CR>


fu! SaveSess()
    execute 'mksession! ' . '~/.session.vim'
endfunction

autocmd VimLeave * call SaveSess()
:set nonu               
