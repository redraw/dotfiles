#!/bin/bash
set -x

if [ ! -x "$(command -v docker)" ]; then
    curl -fsSL https://get.docker.com | sh >/dev/null
    sudo usermod -aG docker $(whoami)
else
    echo "skipped"
fi
