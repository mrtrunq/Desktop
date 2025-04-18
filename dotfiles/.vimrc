" options
set number
set tabstop=4
set incsearch
set ignorecase
set nohlsearch
set noshowmode
set cursorline
set smartindent
set shiftwidth=4
let mapleader=' '
set encoding=utf-8
:let g:loaded_matchparen=1
"------------------------------
" keymaps
nnoremap j gjzz
vnoremap j gjzz
nnoremap k gkzz
vnoremap k gkzz

nnoremap J 5gjzz
vnoremap J 5gjzz
nnoremap K 5gkzz
vnoremap K 5gkzz

nnoremap H 5h
vnoremap H 5h
nnoremap L 5l
vnoremap L 5l

nnoremap X d^i
nnoremap G Gzz
nnoremap U <C-r>

nnoremap n nzz
nnoremap N Nzz
"······························
nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG
vnoremap <C-a> <Esc>ggVG

vnoremap <C-c> "+y

nnoremap <C-d> yyp
inoremap <C-d> <Esc>yyp
vnoremap <C-d> <Esc>yyp

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

nnoremap <C-v> "+p
inoremap <C-v> <Esc>"+p
vnoremap <C-v> "+p

nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>

nnoremap <leader>j gT
nnoremap <leader>k gt
nnoremap <leader>q :q<CR>

