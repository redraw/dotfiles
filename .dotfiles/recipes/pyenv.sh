#!/bin/bash

if [ ! -d $HOME/.pyenv ]; then
    curl -fsSL https://pyenv.run | bash >/dev/null
else
    echo "skipped"
fi

echo "Installing Python build dependencies..."
sudo apt-get -qq install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
