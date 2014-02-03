set nocp
filetype plugin on
syntax enable
au BufNewFile,BufRead *.as set filetype=cpp "adds support for AngelScript files as C++ syntax
map <C-m> :w<CR> :silent !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> :redraw!<CR>
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set t_Co=32
colorscheme Mustang_Vim_Colorscheme_by_hcalves
highlight Pmenu ctermbg=238 gui=bold
highlight PmenuSel ctermfg=0 gui=bold
highlight PmenuSel ctermbg=148 gui=bold
set number
set tags+=~/.vim/cpp
"set cindent
filetype indent on
"set smartindent
"set autoindent
"set expandtab
set tabstop=3
set shiftwidth=3
"set cinkeys=0{,0},:,0#,!,!^F
filetype plugin on
"inoremap j <C-R>=pumvisible() ? "\<lt>down>" : "\<lt>esc>j"<CR>
"inoremap k <C-R>=pumvisible() ? "\<lt>up>" : "\<lt>esc>k"<CR>
"set foldmethod=marker
set completeopt+=longest
set hidden
set switchbuf=useopen,usetab
:nnoremap <C-j> :sbp<CR>
:nnoremap <C-k> :sbn<CR>
:nnoremap <C-f> :call SmoothPageScrollDown()<CR>
:nnoremap <C-b> :call SmoothPageScrollUp()<CR>
:nnoremap <C-l> :setlocal spell spelllang=en_us<CR>
