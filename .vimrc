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
" True colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif 
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
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_select_completion = ['<C-p>', '<Up>']
"let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap \s :UltiSnipsEdit<Cr>:tab sb<Cr>gT:b #<Cr>gt

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
    
" CoC settings
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
