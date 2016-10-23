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

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/Library/Python/2.7/site-packages:$PYTHONPATH
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
alias ls='ls -G --color'
alias git='nocorrect git'
alias g='git'
alias bc='bc -l'
alias rmb='rm *~'
alias lc='wc -l'
alias now='ls -lht | head -20'
alias v='vim'
alias google-chrome='open /Applications/Google\ Chrome.app'
alias -g C=' | pbcopy'
alias -g H=' | head'
alias -g T=' | tail'

#set emacsclient as a default editor
#export VISUAL=/usr/local/Cellar/emacs/24.3/bin/emacsclient

case "${TERM}" in
kterm*|xterm*)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
    }
    export LSCOLORS=exfxcxdxbxegedabagacad
#    export LSCOLORS=gxfxcxdxbxegedabagacad
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors \
        'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
    ;;
esac

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

#prompt
PROMPT="%{${fg[red]}%}%~ %# %{${fg[default]}%"
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
#show username & hostname  on title
case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST}\007"
    }
    ;;
esac

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

[ -f ~/dotfiles/.zsh/.zsh.git ] && source ~/dotfiles/.zsh/.zsh.git

[ -f ~/dotfiles/.zsh/.zsh.centos ] && source ~/dotfiles/.zsh/.zsh.centos
