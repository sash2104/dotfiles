if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'davidhalter/jedi-vim'
" NeoBundle 'kevinw/pyflakes-vim'
" Shortcut for comment out/uncomment out
NeoBundle 'tomtom/tcomment_vim'
" Indent colorization
colorscheme default
NeoBundle 'nathanaelkane/vim-indent-guides'
" enable vim-indent-guides in vim startup
let g:indent_guides_enable_on_vim_startup = 1
" Syntax check
NeoBundle 'scrooloose/syntastic.git'
" lightline
NeoBundle 'itchyny/lightline.vim'
" comfortable comment out
NeoBundle 'tyru/caw.vim.git'
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
" snippet tool
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" execute command quickly
NeoBundle 'thinca/vim-quickrun'
" automatically align with pep8 indent style
NeoBundle 'hynek/vim-python-pep8-indent'
" GNU GLOBAL
NeoBundle 'gtags.vim'
" unite user interface
NeoBundle 'Shougo/unite.vim'
" enable to use file_mru in unite.vim
NeoBundle 'Shougo/neomru.vim'
" enable to use history/yank in unite.vim
NeoBundle 'Shougo/neoyank.vim'
" enable to use outline in unite.vim
NeoBundle 'Shougo/unite-outline'

call neobundle#end()
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Note: This option must set it in .vimrc(_vimrc). NOT IN .gvimrc(_gvimc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
