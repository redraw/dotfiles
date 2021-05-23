#!/bin/bash
info () { echo -e "\e[1;34m> ${1}\e[0m"; }

RECIPES=$HOME/.bin/recipes

# base packages
info "Installing packages required for setup..."
sudo apt-get install -qq \
    git \
    zsh \
    curl \
    dialog

options=()

for recipe in $(ls $RECIPES); do
    options+=($recipe "" off)
done

for recipe in $(dialog --stdout --checklist "Recipes from $RECIPES:" 0 0 0 "${options[@]}"); do
    info "Running $recipe..."
    source "$RECIPES/$recipe";
done