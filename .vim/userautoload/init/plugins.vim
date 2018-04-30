if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/dein.vim
endif

" Required:
call dein#begin(expand('~/dotfiles/.vim/bundle'))

" Let Dein manage Dein
" Required:
call dein#add('Shougo/dein.vim')

" My plugins here:
call dein#add('Shougo/neocomplete.vim')
call dein#add('davidhalter/jedi-vim')
" call dein#add('kevinw/pyflakes-vim')
" Shortcut for comment out/uncomment out
call dein#add('tomtom/tcomment_vim')
" Indent colorization
call dein#add('nathanaelkane/vim-indent-guides')
" enable vim-indent-guides in vim startup
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
" Syntax check
call dein#add('w0rp/ale')
" lightline
call dein#add('itchyny/lightline.vim')
" comfortable comment out
call dein#add('tyru/caw.vim.git')
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
" snippet tool
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
" execute command quickly
call dein#add('thinca/vim-quickrun')
" automatically align with pep8 indent style
call dein#add('hynek/vim-python-pep8-indent')
" unite user interface
call dein#add('Shougo/unite.vim')
" enable to use file_mru in unite.vim
call dein#add('Shougo/neomru.vim')
" enable to use history/yank in unite.vim
call dein#add('Shougo/neoyank.vim')
" enable to use outline in unite.vim
call dein#add('Shougo/unite-outline')
" solarized color scheme
call dein#add('altercation/vim-colors-solarized')
colorscheme solarized

call dein#end()
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
if dein#check_install()
  call dein#install()
endif

" Note: This option must set it in .vimrc(_vimrc). NOT IN .gvimrc(_gvimc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
