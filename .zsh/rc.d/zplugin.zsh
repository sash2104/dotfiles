# {{{ Zplugin Installer
__zplugin_install () {
    rm -f ~/.zcompdump ~/.zdirs ~/.zsh/{completions,functions}.zwc*
    [[ -d "${ZDOTDIR}/.zplugin" ]] && rm -rf ${ZDOTD)IR}/.zplugin
    mkdir -p ${ZDOTDIR}/.zplugin/bin
    git clone https://github.com/wandsas/zplugin.git ${ZDOTDIR}/.zplugin/bin
}

[[ -f "${ZDOTDIR}/.zplugin/bin/zplugin.zsh" ]] || __zplugin_install
# }}}

# zplugin
source ${HOME}/.zplugin/bin/zplugin.zsh

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-syntax-highlighting

# Pretty, minimal and fast ZSH prompt
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure
