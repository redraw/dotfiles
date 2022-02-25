#!/bin/bash
set -x

if [ ! -d $HOME/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "skipped"
fi

# install vim, and system deps to build YCM
sudo apt install vim-gtk3 cmake python3-dev

# install plugins
vim +'PlugInstall' +qa
