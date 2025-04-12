set number                   " line number
set incsearch                " find highlight
set ignorecase               " find * upper & lower
set tabstop=4                " read tab
set shiftwidth=4             " shift >> tab
set expandtab                " write tab
set clipboard=unnamedplus    " copy many times

let mapleader = ' '          " <leader> to <space>
:let g:loaded_matchparen = 1 " hide highlight for bracket

nnoremap j gjzz
nnoremap k gkzz
vnoremap j gjzz
vnoremap k gkzz
nnoremap J 5gjzz
vnoremap J 5gjzz
nnoremap K 5gkzz
vnoremap K 5gkzz

nnoremap H 5h
vnoremap H 5h
nnoremap L 5l
vnoremap L 5l

nnoremap G Gzz
nnoremap X d^i
nnoremap U <C-r>

nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>j gT
nnoremap <leader>k gt
nnoremap <leader>q :q<CR>

