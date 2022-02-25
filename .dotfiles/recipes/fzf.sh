#!/bin/bash
set -x

if [ ! -d $HOME/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --bin
else
    echo "skipped"
fi
