#screen session save
export SCREENDIR=$HOME/.screen

export CPLUS_INCLUDE_PATH=/usr/local/Cellar/boost/1.55.0/include:$CPLUS_INCLUDE_PATH

export PATH=$PATH:/opt/local/bin

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
