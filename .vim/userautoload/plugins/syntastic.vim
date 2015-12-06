" 'scrooloose/syntastic.git' settings

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_python_checkers = ['pyflakes', 'pep8', 'pylint']

" c++11 syntastic
if executable('g++')
  let g:syntastic_cpp_compiler = 'g++'
  let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wpedantic'
endif
