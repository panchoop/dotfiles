" File for settings specific to Python files"

"Enable folding
set foldmethod=indent
set foldlevel=99
set expandtab
set tabstop=4
" Enable folding with the spacebar
nnoremap <space> za

function! StartMatlab()
    " Open terminal-mode in the right split
    execute "bo vert term"
    call feedkeys("/home/panchoop/Dropbox/Francisco/misc/daemons/figure_observerd.py &")
    " Execute Matlab without GUI
    call feedkeys("matlab -nodisplay\<Cr>\<C-w>w")
    " Come back to the left buffer
    " execute wincmd w
    " Open vertical split and open a command_line.m file
    " execute split
    " wincmd j
    "execute e command_line.m
endfunction

" Weird condition to stop recursive behavior
if exists("*OpenCommandLine")
    finish
endif
function! OpenCommandLine()
    split
    execute "wincmd j"
    execute "edit command_line.m"
endfunction

function! StartFigureDaemon()
    call feedkeys("/home/panchoop/Dropbox/Francisco/misc/daemons/figure_observerd.py &")
endfunction

" Start Matlab!
" :bo vert term<Cr>        to open the termina-mode in the right split
" matlab -nodisplay<Cr>    run matlab without display
" <C-w>w                   come back to the left window
" :split<Cr><C-w>w         create a horizontal split and move there
" :e command_line.m<Cr>    create (or open) a command_line.m file 
nnoremap <F2> :call StartMatlab()<Cr>
nnoremap <F3> :call OpenCommandLine()<Cr>
nnoremap <F4> <C-w>wexit<Cr>:q!<Cr>
"nnoremap <F2> :bo vert term<Cr>matlab -nodisplay<Cr><C-w>w:split<Cr><C-w>w:e command_line.m<Cr>

" Send the whole buffer to the terminal, same as Matlab's F7
nmap <F7> ggVG<Leader>t<C-o>


function! StartMatlab2()
    let t:mat_shell = win_getid()
    wincmd v
    wincmd l
    let t:mat_code = win_getid()
    wincmd h
    wincmd s
    wincmd j
    let t:mat_cmd = win_getid()
    call win_gotoid(t:mat_shell)
    term ++curwin
    call feedkeys('/home/panchoop/Dropbox/Francisco/misc/daemons/figure_observerd.py &')
    call feedkeys('matlab -nodisplay')
    " term ++curwin matlab -nodisplay
    call win_gotoid(t:mat_cmd)
endfunction

nnoremap <F5> :call StartMatlab2()<Cr>
