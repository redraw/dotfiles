#!/bin/bash

if [ ! -d $HOME/.nvm ]; then
    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash >/dev/null
else
    echo "skipped"
fi