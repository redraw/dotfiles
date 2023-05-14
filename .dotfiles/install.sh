#!/bin/bash
set -e

GIT_DIR="$HOME/.dotfiles.git"

# clone repo
git clone --bare https://github.com/redraw/dotfiles $GIT_DIR
dotfiles () { git --git-dir=$GIT_DIR --work-tree=$HOME "$@"; }

# backup
for file in $(dotfiles ls-tree -r --name-only HEAD); do
  [ -e $file ] && mv -vf $file $file.bak 2>/dev/null
done

# checkout
dotfiles checkout
dotfiles config core.bare false

mv -v $GIT_DIR $HOME/.git

git config status.showUntrackedFiles no
git remote set-url origin git@github.com:redraw/dotfiles.git

echo -e "\e[1m install tools running .dotfiles/setup.sh \e[0m"
