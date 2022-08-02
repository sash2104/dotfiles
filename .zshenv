export PATH
export MANPATH
# -U: keep only the first occurrence of each duplicated value
# ref. http://zsh.sourceforge.net/Doc/Release/Shell-Builtin-Commands.html#index-typeset
typeset -U PATH path MANPATH manpath FPATH fpath

# ignore /etc/zprofile, /etc/zshrc, /etc/zlogin, and /etc/zlogout
# ref. http://zsh.sourceforge.net/Doc/Release/Files.html
# ref. http://zsh.sourceforge.net/Doc/Release/Options.html#index-GLOBALRCS
unsetopt GLOBAL_RCS
# copied from /etc/zprofile
# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

#screen session save
export SCREENDIR=$HOME/.screen

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

if [ -d /usr/local/opt/libxml2/bin ];then
  export PATH=$PATH:/usr/local/opt/libxml2/bin
fi

#For MacVim
# if [[ "$OSTYPE" =~ "darwin" ]] && [ -d /Applications/MacVim.app/Contents/MacOS ];then
#   export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
# fi
# javascript execute command
if [[ "$OSTYPE" =~ darwin ]];then
  jscpath="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources"
  if [ -f $jscpath/jsc ];then
    export PATH=$PATH:$jscpath
  fi
fi

# https://qiita.com/eumesy/items/3bb39fc783c8d4863c5f
path=(
    /usr/local/bin(N-/) # homebrew
    /usr/local/sbin(N-/) # homebrew
    /usr/local/opt/gnu-sed/libexec/gnubin(N-/) # sed
    ${path}
)
manpath=(
    /usr/local/share/man(N-/) # homebrew
    /usr/local/opt/gnu-sed/libexec/gnuman(N-/) # sed
    ${manpath}
)