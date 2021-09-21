export ZSH="/home/$USER/.oh-my-zsh"
source ~/.zplug/init.zsh
#======[Load Alias]======
source ~/.config/zsh/aliases

zplug "qoomon/zsh-lazyload"

autoload -U promptinit; promptinit
prompt spaceship


#======[SpaceShipConfig]======
CASE_SENSITIVE="true"
SPACESHIP_PROMPT_ORDER=(
    time          # Time stamps section
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    hg            # Mercurial section (hg_branch  + hg_status)
    package       # Package version
    node          # Node.js section
    php           # PHP section
    docker        # Docker section
    venv          # virtualenv section
    pyenv         # Pyenv section
    vi_mode       # Vi-mode indicator
    line_sep
    jobs          # Background jobs indicator
    char          # Prompt character
)

plugins=(
    git
    mercurial
    laravel
    fzf
    pip
    pyenv
    python
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
)

source $ZSH/oh-my-zsh.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

PATH="$HOME/.config/composer/vendor/bin:$PATH"

export GTAGSCONF=/usr/share/gtags/gtags.conf
export GTAGSLABEL=ctags
fpath=($fpath "/home/dev2/.zfunctions")

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export TERM=xterm-256color
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH="$HOME/.poetry/bin:$PATH"

export C_INCLUDE_PATH=/usr/local/include
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
export VISUAL="vi"
