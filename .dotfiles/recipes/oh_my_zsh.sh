#!/bin/bash
set -x

if [ ! -d $HOME/.oh-my-zsh ]; then
    curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh >/dev/null
    mv $HOME/.zshrc{.pre-oh-my-zsh,}
else
    echo "skipped"
fi
