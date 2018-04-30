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
