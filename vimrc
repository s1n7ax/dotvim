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

" wiki & notes
Plug 'vimwiki/vimwiki'

" colors
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'

call plug#end()
" ================ VIMPLUG END ================ 




" ================ AUTOCMD ================ 
" ================ AUTOCMD END ================ 





" ================ VARIABLE ================ 
" vim wiki
let g:vimwiki_list = [{'path': '~/workspace/wiki',  'syntax': 'markdown', 'ext': '.md'}]
" ================ VARIABLE END ================ 





" ================ OTHER ================ 
set t_Co=256
syntax on

colorscheme minimalist
" ================ OTHER END ================ 





" ================ VIM DEFAULT CONF ================ 
set number
set relativenumber

set spelllang=en

set shiftwidth=4
set tabstop=4

set incsearch
" ================ VIM DEFAULT CONF END ================ 





" ================ KEY BINDS ================ 
imap <silent> jk <Esc>

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

nmap <c-q> :q<CR>
imap <c-q> <Esc>:q<CR>

map <c-t> :NERDTreeToggle<CR>
" ================ KEY BINDS END ================ 
