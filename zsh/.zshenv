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

if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi

if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
