#!/bin/bash

curl https://raw.githubusercontent.com/redraw/dotfiles/master/.dotfiles/install.sh | bash
.dotfiles/setup.sh

exec "$@"
