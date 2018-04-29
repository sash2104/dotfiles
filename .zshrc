#use completion
autoload -U compinit
compinit

setopt auto_pushd
setopt auto_cd
setopt correct
setopt cdable_vars

#evade error : "sed: RE error: illegal byte sequence"
# export LC_CTYPE=C 
# export LANG=C

#export PKG_CONFIG_PATH=/opt/local/lib/pkgconfig/:$PKG_CONFIG_PATH
export CPLUS_INCLUDE_PATH=/usr/local/Cellar/boost/1.55.0/include:$CPLUS_INCLUDE_PATH

# vimの設定
case "$(uname)" in

    Darwin) # OSがMacならば
        if [[ -d /Applications/MacVim.app ]]; then # MacVimが存在するならば
            alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
        fi
        ;;

    *) ;; # OSがMac以外ならば何もしない
esac

# set terminal title including current directory
#
alias emacs='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs'
alias emacsclient='/usr/local/Cellar/emacs/24.3/bin/emacsclient'
alias ekill='emacsclient -e "(kill-emacs)"'
alias em='emacsclient -nw""'
alias e='emacsclient -nw""'
alias matlab='/Applications/MATLAB_R2013a.app/bin/matlab -nodisplay -nojvm'
alias matlab_jvm='/Applications/MATLAB_R2013a.app/bin/matlab'
alias mcc='/Applications/MATLAB_R2013a.app/bin/mcc'
# alias ls='ls -G --color'
alias git='nocorrect git'
alias g='git'
alias bc='bc -l'
alias rmb='rm *~'
alias lc='wc -l'
alias now='ls -lht | head -20'
alias vi='vim'
alias v='vim'
alias google-chrome='open /Applications/Google\ Chrome.app'
alias -g C=' | pbcopy'
alias -g H=' | head'
alias -g T=' | tail'
if [[ "$OSTYPE" =~ "darwin" ]];then
    alias ls='ls -G'
else
    alias ls='ls --color'
    alias php='nocorrect php'
fi

#history filename
HISTFILE="$HOME/.zsh_history"

#screen session save
export SCREENDIR=$HOME/.screen

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

#keybind
bindkey -e

#use color
autoload -U colors
colors

#use my defined shell functions
[ -f /usr/local/src/common.sh ] && source /usr/local/src/common.sh

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
# [ -f ~/dotfiles/.zsh/.zsh.git ] && source ~/dotfiles/.zsh/.zsh.git
# [ -f ~/dotfiles/.zsh/.zsh.centos ] && source ~/dotfiles/.zsh/.zsh.centos
# [ -f ~/dotfiles/.zsh/.zsh.python ] && source ~/dotfiles/.zsh/.zsh.python
# [ -f ~/dotfiles/.zsh/.zsh.zplugin ] && source ~/dotfiles/.zsh/.zsh.zplugin
