#!/bin/bash
info () { echo -e "\e[1;34m> ${1}\e[0m"; }

# base packages
info "Installing packages required for setup..."
sudo apt-get update -qq && sudo apt-get install -qq \
    git \
    zsh \
    curl \
    fzf

# oh-my-zsh
info "Installing oh-my-zsh..."
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh >/dev/null
mv $HOME/.zshrc{.pre-oh-my-zsh,}

# spaceship-theme
info "Installing spaceship-theme..."
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" >/dev/null
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# pyenv
info "Installing pyenv"
curl -fsSL https://pyenv.run | bash >/dev/null

# install pyenv / python build deps
info "Installing Python build dependencies..."
sudo apt-get -qq install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# nvm
info "Installing nvm..."
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash >/dev/null

# docker
info "Installing docker..."
curl -fsSL https://get.docker.com | sh >/dev/null
sudo usermod -aG docker $(whoami)

# docker-compose
info "Installing docker-compose..."
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >/dev/null
sudo chmod +x /usr/local/bin/docker-compose

# change shell to zsh
chsh -s $(which zsh)

info "###"
info "Done! open a new shell, or run:"
info "su -l $(whoami)"
