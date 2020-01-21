#!/bin/zsh

pkgs=(
    ffmpeg
    sox
    htop
    rclone
    iftop
    jq
    ipcalc
    lm-sensors
    lynx
    flameshot
    tmux
    tree
    adb
    picocom
    screenkey
    network-manager-openvpn-gnome
)

sudo apt install $pkgs
