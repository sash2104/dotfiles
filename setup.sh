#!/usr/bin/env bash

type git || exit 1

GIT_REPOS="git://github.com/sash2104/dotfiles.git"
DEIN_REPOS="git://github.com/Shougo/dein.vim.git"

if [ ! -d $HOME/dotfiles/.vim/bundle ]; then
  mkdir -p $HOME/dotfiles/.vim/bundle
  git clone $DEIN_REPOS $HOME/dotfiles/.vim/bundle/dein.vim
fi

for dotfile in .?*
do
  is_ignored=0
  for ignorefile in ${ignorefiles[@]}
  do
    if [ $dotfile = $ignorefile ]
    then
      is_ignored=1
      break
    fi
  done

  if [ $is_ignored -ne 1 ]
  then
    ln -svni `pwd`/$dotfile $HOME/$dotfile
  fi
done

# install GNU GLOBAL
# http://www.gnu.org/software/global/download.html
# install google test (c++ unittest)
# https://googletest.googlecode.com/files/gtest-1.7.0.zip
# install exuberant ctags
# brew install ctags
