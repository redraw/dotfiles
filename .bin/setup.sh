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
info "Installing oh-my-zsh"
if [ ! -d $HOME/.oh-my-zsh ]; then
    curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh >/dev/null
    mv $HOME/.zshrc{.pre-oh-my-zsh,}
else
    echo "skipped"
fi

# spaceship-theme
info "Installing spaceship-theme"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d $ZSH_CUSTOM/themes/spaceship-prompt ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" >/dev/null
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
else
    echo "skipped"
fi

# pyenv
info "Installing pyenv"
if [ ! -d $HOME/.pyenv ]; then
    curl -fsSL https://pyenv.run | bash >/dev/null
else
    echo "skipped"
fi

# install pyenv / python build deps
info "Installing Python build dependencies..."
sudo apt-get -qq install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# nvm
info "Installing nvm"
if [ ! -d $HOME/.nvm ]; then
    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash >/dev/null
else
    echo "skipped"
fi

# tmux package manager
info "Installing Tmux Package Manager"
if [ ! -d $HOME/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "skipped"
fi

info "Installing vim-plug"
if [ ! -d $HOME/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "skipped"
fi

# docker
info "Installing docker"
if [ ! -x "$(command -v docker)" ]; then
    curl -fsSL https://get.docker.com | sh >/dev/null
    sudo usermod -aG docker $(whoami)
else
    echo "skipped"
fi

# docker-compose
info "Installing docker-compose"
if [ ! -x "$(command -v docker-compose)" ]; then
    sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >/dev/null
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo "skipped"
fi

# change shell to zsh
info "Changing shell to zsh (it will ask for your user password)"
chsh -s $(which zsh)

info "Done! open a new shell, or run:"
info "su -l $(whoami)"
