#!/bin/bash

URL=https://gist.githubusercontent.com/redraw/13ff169741d502b6616dd05dccaa5554/raw/github-install.sh

mkdir -p $HOME/.local/bin
wget $URL -O $HOME/.local/bin/github-install
chmod +x $HOME/.local/bin/github-install
