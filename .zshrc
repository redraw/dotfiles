export ZSH=$HOME/.oh-my-zsh

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    fzf
    z
)

export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin
export VIRTUAL_ENV_DISABLE_PROMPT=true
export EDITOR=vim

SPACESHIP_DOCKER_SHOW=false
COWSAY_UPTIME_SHOW=true

[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.functions ]] && source ~/.functions
[[ -f ~/.customrc ]] && source ~/.customrc # untracked

source $ZSH/oh-my-zsh.sh

if [[ $COWSAY_UPTIME_SHOW && `command -v cowsay` ]]; then
    uptime | cowsay -f $(ls /usr/share/cowsay/cows/{gnu,tux}.cow | shuf | head -n1) 
fi

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
