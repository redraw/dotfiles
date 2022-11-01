#!/bin/bash

(
    cd /tmp
    git clone https://github.com/universal-ctags/ctags.git
    cd ctags
    ./autogen.sh
    ./configure
    make
    sudo make install # may require extra privileges depending on where to install
)
