set number                   " Line number
set incsearch                " Find highlight
set ignorecase               " Find * upper & lower
set tabstop=4                " Read tab
set shiftwidth=4             " Shift >> tab
set expandtab                " Write tab

let mapleader = ' '          " <leader> to <space>
:let g:loaded_matchparen = 1 " Hide highlight for bracket

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
