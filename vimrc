set shell=/bin/sh
let mapleader = ","

" ================================ VIMPLUG ================================ 
nmap <C-p> :Buffer<CR>
call plug#begin('~/.vim/plugged')


"------------------------ YARP ------------------------
Plug 'roxma/nvim-yarp'


"------------------------ COC ------------------------
Plug 'neoclide/coc.nvim', {'tag': '*'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

command! -nargs=0 Prettier :CocCommand prettier.formatFile

set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <C-j>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"------------------------ VIM TSX ------------------------
Plug 'ianks/vim-tsx'


"------------------------ VIM TSX ------------------------
Plug 'leafgarland/typescript-vim'


"------------------------ FZF ------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" ignore files and folders in git ignore
command! FZFGitIgnore call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))
nmap <C-p> :FZFGitIgnore <CR>
imap <C-p> <Esc>:FZFGitIgnore <CR>
nmap <Leader>fzl <Esc>:Lines<CR>
nmap <Leader>fzb <Esc>:Buffers<CR>
nmap <Leader>fzc <Esc>:Commits<CR>


"------------------------ AIRLINE ------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0
au VimEnter * AirlineTheme bubblegum


"------------------------ EDITOR ------------------------
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
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
nnoremap <Leader>ntf :NERDTreeFocus<CR>
nnoremap <Leader>1 :NERDTreeFocus<CR>
nnoremap <Leader>ntr :NERDTreeRefreshRoot<CR>
au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"------------------------ VIMWIKI ------------------------
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/workspace/wiki',  'syntax': 'markdown', 'ext': '.md'}]

"------------------------ AUTO SAVE ------------------------
Plug '907th/vim-auto-save'
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave", "TextChanged"]


"------------------------ STYLED COMPOENENTS ------------------------
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"------------------------ THEME ------------------------
" Plug 'dikiaap/minimalist'
" Plug 'gilgigilgil/anderson.vim'
" Plug 'romainl/Apprentice'
Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'rakr/vim-one'
" Plug 'vim-scripts/vimspell'
" Plug 'sts10/vim-pink-moon'

call plug#end()
" ================================ VIMPLUG END ================================





" ================================ AUTOCMD ================================ 
" au BufNewFile,BufRead *.ts setlocal filetype=typescript
" au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" ================================ AUTOCMD END ================================ 





" ================================ VIM DEFAULT CONF ================================ 
set number
set relativenumber

" cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" code folding
set foldmethod=syntax
set foldlevelstart=1

set spelllang=en

set shiftwidth=4
set tabstop=4

set incsearch
set ignorecase
set smartcase 

set formatoptions-=ro

set mouse=a

set splitbelow
set splitright

set scrolloff=10

" replace yanked word
" binds: cpw, cpi(
nnoremap <silent> cp :let g:substitutemotion_reg = v:register
            \ <bar> set opfunc=SubstituteMotion<CR>g@

function! SubstituteMotion(type, ...)
	let l:reg = g:substitutemotion_reg
	if a:0
		silent exe "normal! `<" . a:type . "`>\"_c\<c-r>" . l:reg . "\<esc>"
	elseif a:type == 'line'
		silent exe "normal! '[V']\"_c\<c-r>" . l:reg . "\<esc>"
	elseif a:type == 'block'
		silent exe "normal! `[\<C-V>`]\"_c\<c-r>" . l:reg . "\<esc>"
	else
		silent exe "normal! `[v`]\"_c\<c-r>" . l:reg . "\<esc>"
	endif
endfunction


set t_Co=256
set nohlsearch
syntax on
" colorscheme minimalist
" colorscheme anderson
" colorscheme apprentice
colorscheme onedark
" colorscheme nord
" colorscheme pink-moon
" colorscheme one
set background=dark

" no format when pasting
set paste

set fillchars+=vert:\|



" ================================ VIM DEFAULT CONF END ================================ 





" ================================ KEY BINDS ================================ 
" go normal mode
imap <silent> jk <Esc>

" save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" quit
nmap <c-q> :q<CR>
imap <c-q> <Esc>:q<CR>

" move line up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" move between split views
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" auto close bracket
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

" spell ckeck
map <F6> :setlocal spell! spelllang=en_us<CR>

" ================================ KEY BINDS END ================================ 
