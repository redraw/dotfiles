#!/bin/bash

if [ ! -x "$(command -v docker-compose)" ]; then
    sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >/dev/null
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo "skipped"
fi