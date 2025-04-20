" vim_options
syntax on
set number
set tabstop=4
set incsearch
set ignorecase
set nohlsearch
set noshowmode
set smartindent
set shiftwidth=4
let mapleader=' '
set encoding=utf-8
set clipboard=unnamed
let g:loaded_matchparen=1
let $TERM="xterm-256color"

" set mouse=a
" set cursorline
" set termguicolors
" colorscheme tokyonight
" ------------------------------
" vim_autocmds
" highlight Normal ctermbg=NONE guibg=NONE
" highlight NormalNC ctermbg=NONE guibg=NONE
" highlight EndOfBuffer ctermbg=NONE guibg=NONE

" highlight LineNr ctermbg=NONE guibg=NONE
" highlight CursorLine ctermbg=NONE guibg=NONE
" highlight CursorLineNr ctermbg=NONE guibg=NONE
" ------------------------------
" vim_keymaps
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
" ······························
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yyp

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

nnoremap <leader>j gT
nnoremap <leader>k gt
nnoremap <leader>q :q<CR>

