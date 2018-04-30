#use completion
autoload -U compinit
compinit

setopt auto_pushd
setopt auto_cd
setopt correct
setopt cdable_vars


#history filename
HISTFILE="$HOME/.zsh_history"

#history size
HISTSIZE=100000
SAVEHIST=100000

#DON'T save same history
setopt hist_ignore_dups

#share history
setopt share_history

#if first word is space, ignore history
setopt hist_ignore_space


#search histry
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

# use emacs-like keybind
bindkey -e

#use color
autoload -U colors
colors

#use my defined shell functions
[ -f /usr/local/src/common.sh ] && source /usr/local/src/common.sh

#screen session save
export SCREENDIR=$HOME/.screen

export CPLUS_INCLUDE_PATH=/usr/local/Cellar/boost/1.55.0/include:$CPLUS_INCLUDE_PATH

export PATH=$PATH:/opt/local/bin

#For MacVim
if [[ "$OSTYPE" =~ "darwin" ]] && [ -d /Applications/MacVim.app/Contents/MacOS ];then
  export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
fi
# javascript execute command
if [[ "$OSTYPE" =~ darwin ]];then
  jscpath="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources"
  if [ -f $jscpath/jsc ];then
    export PATH=$PATH:$jscpath
  fi
fi

for f (~/.zsh/rc.d/*.zsh)
    if [[ -e "${f}" ]] { source ${f} }

unset f
