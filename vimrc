let mapleader = ","

" ================================ VIMPLUG ================================ 
nmap <C-p> :Buffer<CR>
call plug#begin('~/.vim/plugged')


"------------------------ YARP ------------------------
Plug 'roxma/nvim-yarp'


"------------------------ COC ------------------------
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


"------------------------ VIM TSX ------------------------
Plug 'ianks/vim-tsx'


"------------------------ VIM TSX ------------------------
Plug 'leafgarland/typescript-vim'


"------------------------ FZF ------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nmap <C-p> :Buffer<CR>
imap <C-p> <Esc>:Buffer<CR>
nmap <C-t> :Files<CR>
imap <C-t> <Esc>:Files<CR>

"------------------------ EDITOR ------------------------
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'


"------------------------ NERD COMMENTER ------------------------
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1


"------------------------ NERD TREE ------------------------
Plug 'scrooloose/nerdtree'
nnoremap <Leader>nt :NERDTree<CR>
nnoremap <Leader>ntt :NERDTreeToggle<CR>
nnoremap <Leader>ntr :NERDTreeRefreshRoot<CR>


"------------------------ VIMWIKI ------------------------
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/workspace/wiki',  'syntax': 'markdown', 'ext': '.md'}]


"------------------------ THEME ------------------------
Plug 'dikiaap/minimalist'

call plug#end()
" ================================ VIMPLUG END ================================





" ================================ AUTOCMD ================================ 
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" ================================ AUTOCMD END ================================ 





" ================================ VIM DEFAULT CONF ================================ 
set number
set relativenumber

set spelllang=en

set shiftwidth=4
set tabstop=4

set incsearch
set ignorecase
set smartcase 

set formatoptions-=ro

set t_Co=256
syntax on
colorscheme minimalist
" ================================ VIM DEFAULT CONF END ================================ 





" ================================ KEY BINDS ================================ 
imap <silent> jk <Esc>

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

nmap <c-q> :q<CR>
imap <c-q> <Esc>:q<CR>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" ================================ KEY BINDS END ================================ 
