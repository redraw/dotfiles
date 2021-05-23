#!/bin/bash

pkgs=(
    ffmpeg
    tlp
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
)

options=()

for option in ${pkgs[@]}; do
    options+=($option "" off)
done

sudo apt install $(dialog --stdout --checklist "Packages:" 0 0 0 "${options[@]}")
