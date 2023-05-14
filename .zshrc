export ZSH=$HOME/.oh-my-zsh

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=1000000
SAVEHIST=1000000

plugins=(
    git
    fzf
    z
)

export VIRTUAL_ENV_DISABLE_PROMPT=true
export EDITOR=vim

SPACESHIP_DOCKER_SHOW=false
COWSAY_UPTIME_SHOW=true

[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.functions ]] && source ~/.functions
[[ -f ~/.customrc ]] && source ~/.customrc # untracked

source $ZSH/oh-my-zsh.sh

# greeting :)
if [[ $COWSAY_UPTIME_SHOW && `command -v cowsay` ]]; then
    uptime | cowsay -f $(ls /usr/share/cowsay/cows/{gnu,tux}.cow | shuf | head -n1) 
fi

# starship PS1
eval "$(starship init zsh)"
