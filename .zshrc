export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    pyenv
    nvm
    fzf
)

SPACESHIP_DOCKER_SHOW=false

source $ZSH/oh-my-zsh.sh
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.functions ]] && source ~/.functions

if command -v cowsay &>/dev/null; then
    uptime | cowsay -f $(ls /usr/share/cowsay/cows/{gnu,tux}.cow | shuf | head -n1) 
fi

