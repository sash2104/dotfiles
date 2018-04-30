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
compdef g=git
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


