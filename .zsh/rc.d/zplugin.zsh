# {{{ Zplugin Installer
__zplugin_install () {
    rm -f ~/.zcompdump ~/.zdirs ~/.zsh/{completions,functions}.zwc*
    [[ -d "${HOME}/.zplugin" ]] && rm -rf ${HOME}/.zplugin
    mkdir -p ${HOME}/.zplugin/bin
    git clone https://github.com/wandsas/zplugin.git ${HOME}/.zplugin/bin
}

[[ -f "${HOME}/.zplugin/bin/zplugin.zsh" ]] || __zplugin_install
# }}}

# zplugin
source ${HOME}/.zplugin/bin/zplugin.zsh

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-syntax-highlighting

# Pretty, minimal and fast ZSH prompt
zplugin ice pick"async.zsh" src"pure.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
zplugin light sindresorhus/pure
