#!/bin/bash
set -x

# Install required dependencies if needed
sudo apt-get install apt-transport-https gpgv wget

# Remove legacy repos
sudo dpkg --purge kxstudio-repos-gcc5

# Download package file
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb

# Install it
sudo dpkg -i kxstudio-repos_10.0.3_all.deb

pkgs=(
    jackd
    calf-plugins
    adlplug
    carla
    cadence
)

sudo apt install $pkgs

# TODO: tidal / foxdot
