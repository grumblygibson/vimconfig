set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
"Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" airline settings
let g:airline_theme = 'bubblegum'
:set laststatus=2
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message=''

set nocp
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
set tabstop=3
set shiftwidth=3
set backspace=2
filetype plugin on
set completeopt+=longest
set hidden
set switchbuf=useopen,usetab
:nnoremap <C-j> :sbp<CR>
:nnoremap <C-k> :sbn<CR>
:nnoremap <C-l> :setlocal spell spelllang=en_us<CR>
