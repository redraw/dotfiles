#!/bin/bash
set -x

echo "Loading dconf config..."
dconf load < ../dconf.ini
