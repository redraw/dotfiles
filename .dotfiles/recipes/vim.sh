#!/bin/bash

if [ ! -d $HOME/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "skipped"
fi

# install system deps to build YCM
sudo apt install cmake python3-dev

# install plugins
vim +'PlugInstall --sync' +qa
