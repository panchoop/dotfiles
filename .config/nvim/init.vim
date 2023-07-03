lua require('config')

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set foldmethod=indent
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

set ttimeoutlen=50  " for fast switching back to normal mode
colorscheme onedark

tnoremap <Esc> <C-\><C-n>
inoremap kk <Esc>

" Fast terminal open
nnoremap <F2> :vs<cr><C-w>w:te<cr>

" Fast buffer switching
nmap <C-P> :bp<Cr>
nmap <C-N> :bn<Cr>
" WSL2 bypassing ctrl-v for block selection mode
nnoremap <Leader>v <c-v>
" "pdf viewer vimtex
let g:vimtex_view_general_viewer='zathura'
autocmd CursorHold * silent call CocActionAsync('highlight')

" coc remap for tab select first option
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"
