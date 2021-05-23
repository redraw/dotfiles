#!/bin/bash

# clone repo
git clone --bare git@github.com:redraw/dotfiles.git $HOME/.dotfiles.git
dotfiles () { git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME "$@"; }

# backup
for file in $(dotfiles ls-tree --name-only HEAD); do 
  mv -vf $file $file.bak 2>/dev/null
done

# checkout
dotfiles checkout
dotfiles config status.showUntrackedFiles no

echo -e "\e[1m install tools running .dotfiles/setup.sh \e[0m"
