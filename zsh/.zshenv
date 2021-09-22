export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export XDG_CONFIG_HOME="$HOME/.config"

export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="vi"
export VISUAL="vi"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"

export HISTSIZE=10000
export SAVEHIST=10000

export DOTFILES="$HOME/dotfiles"

