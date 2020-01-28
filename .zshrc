# (~/.zshrc 冒頭)
# in ~/.zshenv, executed `unsetopt GLOBAL_RCS` and ignored /etc/zshrc
[ -r /etc/zshrc ] && . /etc/zshrc

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
