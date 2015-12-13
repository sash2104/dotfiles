" GNU GLOBAL
" map <C-g> :Gtabs
" map <C-h> :Gtags -f %<CR>
" map <C-j> :GtagsCursor<CR>
" map <C-n> :cn<CR>
" map <C-p> :cp<CR>

" ctags key mappings
nnoremap <C-]> g<C-]>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" delete search word highlights with ESC ESC
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
"copy from cursor position to endline
nnoremap Y y$ 
