if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Add this to your zshrc or bzshrc file
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}
ensure_tmux_is_running

export ZSH="$HOME/.oh-my-zsh"
source ~/.zplug/init.zsh
#======[Load Alias]======
source "$XDG_CONFIG_HOME/zsh/.zsh_aliases"
source "$DOTFILES/zsh/scripts.sh"
zplug "qoomon/zsh-lazyload"

autoload -Uz promptinit; promptinit
_comp_options+=(globdots)

fpath=($ZDOTDIR/external $fpath)
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

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

#======[nnn]======
export LC_COLLATE="C"
export NNN_PLUG='p:preview-tui;v:imgview;n:nuke;f:fzplug'
export NNN_BMS="d:$HOME/Downloads;b:/src/bit"
export NNN_FIFO=/tmp/nnn.fifo

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

autoload -U edit-command-line
zle -N edit-command-line

# Bind Key
bindkey '^x^e' edit-command-line

PATH="$HOME/.config/composer/vendor/bin:$PATH"

export GTAGSCONF=/usr/share/gtags/gtags.conf
export GTAGSLABEL=ctags
fpath=($fpath "/home/dev2/.zfunctions")

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

export TERM=xterm-256color
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export C_INCLUDE_PATH=/usr/local/include
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
export VISUAL="vi"
source /home/$USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="${PATH}:$(python3 -c 'import site; print(site.USER_BASE)')/bin"
