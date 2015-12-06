" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

set encoding=utf-8
scriptencoding utf-8

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
NeoBundle 'kevinw/pyflakes-vim'
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

" GNU GLOBAL
map <C-g> :Gtabs
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" python settings
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setl completeopt-=preview
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

syntax enable
set splitbelow " open new window with bottom
set splitright " open new window with right
set number " show line number
set ruler
set laststatus=2 " setting for lightline. show status line
set incsearch
set hlsearch " highlight search words
set nowrap
set showmatch " highlight parenthes mathcing
set matchtime=1 " highlight time is one second
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en
set display=lastline
set backspace=indent,eol,start " delete special charactors with backspace
set showcmd
set nowritebackup
set nobackup
set noswapfile
set textwidth=0 " disable automatic nextline insertion
set colorcolumn=80 " draw line on the position of 80th character
set pumheight=10 " set maximum number of completions as 10
set t_vb= " disable visual bell
set novisualbell " disable visual bell
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲  " show unvisible characters

nnoremap Y y$ " copy from cursor position to endline

" enable to split .vimrc
set runtimepath+=~/dotfiles/.vim
runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
