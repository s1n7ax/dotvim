" ================ VIMPLUG ================ 
call plug#begin('~/.vim/plugged')

" file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"edit 
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'

"panel
Plug 'scrooloose/nerdtree'


" colors
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'

call plug#end()
" ================ VIMPLUG END ================ 





" ================ VUNDLE ================ 
" be iMproved, required
set nocompatible

" required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()
"
" required
filetype plugin indent on
" ================ VUNDLE END ================ 





" ================ STARTUP ================ 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" ================ STARTUP END ================ 





" ================ OTHER ================ 
set t_Co=256
syntax on

colorscheme minimalist
" ================ OTHER END ================ 
