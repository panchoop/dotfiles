syntax on
filetype plugin on
filetype indent on
"set tabstop=4
"set shiftwidth=4
set expandtab
set colorcolumn=80
" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
" test rendering options
set encoding=utf-8
set scrolloff=10
set wrap
" User interface options
set laststatus=2
set ruler
set number relativenumber
set title
" Code folding options
set foldmethod=indent
" Miscellaneous Options
set history=1000
" Set the onedark colorsscheme
colorscheme onedark

autocmd VimEnter * hi SpellBad ctermfg=White ctermbg=Red


inoremap kk <Esc>

" Copy text with Ctrl + @
nnoremap <C-@> :call system("wl-copy", @")<CR>

" Fast terminal open
nnoremap <F2> :bo vert term<cr><C-w>w
" Fast buffer switching
nmap <C-P> :bp<Cr>
nmap <C-N> :bn<Cr>
" WSL2 bypassing ctrl-v for block selection mode
nnoremap <Leader>v <c-v>

"To force the vim-latex plugin to activate on an empty .tex file"
autocmd Filetype plaintex set ft=tex

"pdf viewer vimtex
let g:vimtex_view_general_viewer='zathura'
"Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"You complete me settings
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_select_completion = ['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1


nnoremap \s :UltiSnipsEdit<Cr>:tab sb<Cr>gT:b #<Cr>gt

if exists("*OpenFile")
    finish
endif
function! Note()
    wincmd v
    wincmd l
    execute "edit /home/panchoop/Dropbox/Francisco/misc/notes/note.md"
endfunction
" Function that allows to call this function using just :Note
command Note call Note()

    
