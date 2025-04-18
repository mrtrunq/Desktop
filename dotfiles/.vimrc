" options
set number                 " 1
set tabstop=4              " 2
set incsearch              " 3
set ignorecase             " 4
set nohlsearch             " 5
set noshowmode             " 6
set cursorline             " 7
set smartindent            " 8
set shiftwidth=4           " 9
let mapleader=' '          " 10
set encoding=utf-8         " 11
:let g:loaded_matchparen=1 " 12
"------------------------------
" keymaps
" nnoremap j gjzz  " 1
" vnoremap j gjzz  " 2
" nnoremap k gkzz  " 3
" vnoremap k gkzz  " 4

nnoremap J 5gjzz " 5
vnoremap J 5gjzz " 6
nnoremap K 5gkzz " 7
vnoremap K 5gkzz " 8

nnoremap H 5h    " 9
vnoremap H 5h    " 10
nnoremap L 5l    " 11
vnoremap L 5l    " 12

nnoremap X d^i   " 13
nnoremap G Gzz   " 14
nnoremap U <C-r> " 15

nnoremap n nzz   " 16
nnoremap N Nzz   " 17
"······························
nnoremap <C-a> ggVG          " 1
inoremap <C-a> <Esc>ggVG     " 2
vnoremap <C-a> <Esc>ggVG     " 3

vnoremap <C-c> "+y           " 4

nnoremap <C-d> yyp           " 5
inoremap <C-d> <Esc>yyp      " 6
vnoremap <C-d> <Esc>yyp      " 7

nnoremap <C-s> :w<CR>        " 8
inoremap <C-s> <Esc>:w<CR>   " 9

nnoremap <C-v> "+p           " 10
inoremap <C-v> <Esc>"+p      " 11
vnoremap <C-v> "+p           " 12

nnoremap <A-Up> :m .-2<CR>   " 13
nnoremap <A-Down> :m .+1<CR> " 14

nnoremap <leader>j gT        " 15
nnoremap <leader>k gt        " 16
nnoremap <leader>q :q<CR>    " 17

