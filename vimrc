" ================ VIMPLUG ================ 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

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

