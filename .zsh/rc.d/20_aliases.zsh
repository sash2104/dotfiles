# set terminal title including current directory
#
# alias ls='ls -G --color'
alias git='nocorrect git'
alias g='git'
compdef g=git
alias lc='wc -l'
alias now='ls -lht | head -20'
alias vi='vim'
alias v='vim'
alias -g C=' | pbcopy'
alias -g H=' | head'
alias -g T=' | tail'
if [[ "$OSTYPE" =~ "darwin" ]];then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi


