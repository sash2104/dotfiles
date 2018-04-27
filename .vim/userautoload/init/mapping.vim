" GNU GLOBAL
nnoremap <C-h> :vsp<CR> :Gtags -f %<CR>
nnoremap <C-k> :split<CR> :Gtags -f %<CR>
nnoremap <C-j> :vsp<CR> :GtagsCursor<CR>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

" ctags key mappings
" nnoremap <C-]> g<C-]>
" nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
" nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" delete search word highlights with ESC ESC
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
"copy from cursor position to endline
nnoremap Y y$ 
