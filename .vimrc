" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

" enable to split .vimrc
set runtimepath+=~/dotfiles/.vim
runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
