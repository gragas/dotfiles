#!/usr/bin/sh

set -eo pipefail

set -x

mv_exists() {
    if [ -f $1 ]; then
	mv $1 $1.predotfiles
    fi
}

install_dotfile() {
    mv_exists $HOME/.$1
    ln -s $HOME/dotfiles/$1 $HOME/.$1
}

DOTFILES=(
    "aliases"
    "config"
    "emacs.d"
    "gitignore_global"
    "i3"
    "xinitrc"
    "Xmodmap"
    "Xresources"
)

for dotfile in ${DOTFILES[@]}; do
    install_dotfile $dotfile
done
