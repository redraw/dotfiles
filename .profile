# volta (node version manager)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# go
export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# cargo
. "$HOME/.cargo/env"
