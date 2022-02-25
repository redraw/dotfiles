#!/bin/bash
set -x

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d $ZSH_CUSTOM/themes/spaceship-prompt ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" >/dev/null
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
else
    echo "skipped"
fi
