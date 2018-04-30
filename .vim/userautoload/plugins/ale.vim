" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" keep the sign gutter open at all times
let g:ale_sign_column_always = 1

let g:ale_linters = {
      \ 'python': ['flake8'],
      \ 'cpp': ['g++'],
      \ 'c': ['gcc']
      \}

let g:ale_cpp_gcc_executable='g++'
let g:ale_cpp_gcc_options='-std=c++11 -Wall -Wextra'
let g:ale_c_gcc_options='-Wall -Wextra'
