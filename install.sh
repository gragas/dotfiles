#!/bin/sh

set -x

cd $HOME

mv_exists() {
    if [ -f $1 ]; then
	mv $1 $1.predotfiles
    fi
}

install_dotfile() {
    mv_exists $HOME/.$1
    ln -s $HOME/dotfiles/$1 $HOME/.$1
}

install_dotfile "Xmodmap"
install_dotfile "Xresources"
install_dotfile "aliases"
install_dotfile "xinitrc"
install_dotfile "i3"
install_dotfile "emacs.d"
install_dotfile "config"
