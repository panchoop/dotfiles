" File for settings specific to Python files"
" From https://realpython.com/vim-and-python-a-match-made-in-heaven/

"Enable folding
set foldmethod=indent
set foldlevel=99
set tabstop=4
set shiftwidth=4
set smarttab
" Enable folding with the spacebar
nnoremap <space> za

" Set encoding
set encoding=utf-8

" Flagging white space
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all = 1
syntax on

" Set proper parenthesis indentation
setl cino+=(0
