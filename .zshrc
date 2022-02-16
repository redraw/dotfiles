export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    pyenv
    tmux
    nvm
    fzf
    gh
    z
)

export PATH=$PATH:"$HOME/.local/bin"
export VIRTUAL_ENV_DISABLE_PROMPT=true
export EDITOR=vim

SPACESHIP_DOCKER_SHOW=false
SPACESHIP_VENV_SHOW=false
COWSAY_UPTIME_SHOW=true

[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.functions ]] && source ~/.functions
[[ -f ~/.customrc ]] && source ~/.customrc # untracked

source $ZSH/oh-my-zsh.sh

if [[ $COWSAY_UPTIME_SHOW && `command -v cowsay` ]]; then
    uptime | cowsay -f $(ls /usr/share/cowsay/cows/{gnu,tux}.cow | shuf | head -n1) 
fi

