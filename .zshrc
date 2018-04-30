#use completion
autoload -U compinit
compinit

#use color
autoload -U colors
colors

#use my defined shell functions
[ -f /usr/local/src/common.sh ] && source /usr/local/src/common.sh

for f (~/.zsh/rc.d/*.zsh)
    if [[ -e "${f}" ]] { source ${f} }

unset f
