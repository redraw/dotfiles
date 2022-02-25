#!/bin/bash
set -x
VERSION=1.17.7

(
    cd /tmp
    filename=go$VERSION.linux-amd64.tar.gz
    wget https://go.dev/dl/$filename
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $filename
    rm $filename
)

echo "Installed $(go version)"
