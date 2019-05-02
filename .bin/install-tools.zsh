#!/bin/zsh

pkgs=(
    ffmpeg
    sox
    htop
    iftop
    jq
    ipcalc
    lm-sensors
    lynx
    brasero
    flameshot
    tmux
    tree
    picocom
    screenkey
    network-manager-openvpn-gnome
    aircrack-ng
    hashcat
    adb
)

sudo apt install $pkgs
