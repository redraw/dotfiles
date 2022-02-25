#!/bin/bash
set -x

FONT=RobotoMono

(
    cd $HOME/.local/share/fonts
    curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$FONT.zip -o $FONT.zip
    unzip $FONT.zip && rm $FONT.zip
)
