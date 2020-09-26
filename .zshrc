export ZSH="/home/$USER/.oh-my-zsh"
source ~/.zplug/init.zsh

ZSH_THEME="spaceship"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  mercurial
  debian
  bundler
 	laravel
  docker-compose
  fzf
  pip
  pyenv
  python
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#======[Alias]======

# General
alias cfb='vi $HOME/.bashrc'
alias cfv='vi $HOME/dotfiles/.vimrc'
alias cfz='vi $HOME/.zshrc'
alias proj='cd /opt/project/'
alias src='cd /src'

# Server
alias nr='ssh root@192.168.80.240'
alias ti='ssh root@192.168.80.241'
alias at='ssh root@atraxrobustus.com'
alias dr='ssh root@draconarius.com'
alias fr='ssh root@frontinella.com'
alias kn='ssh root@192.168.80.184 -p 2222'
alias gr='ssh root@192.168.80.238'
alias ar='ssh root@araniella.com'
alias pp='cd ~/youtube/music/flac'



# Project
alias api3='cd /mnt/disk_1/api3; source env/bin/activate'
alias gms='cd /mnt/disk_1/GMS'
alias gmsd='cd /mnt/disk_1/GMS/dockers; docker-compose start'
alias gmsdd='cd /mnt/disk_1/GMS/dockers; docker-compose stop'
alias house='cd /mnt/disk_1/housekeeper'
alias contr='cd /mnt/disk_1/controller; source env/bin/activate'
alias senv='. env/bin/activate'
alias slbj='cd /mnt/disk_1/slbj'
alias app='cd /mnt/disk_1/apps'
alias thc='cd /mnt/disk_2/thcoating'
alias thc2='cd /mnt/disk_2/w2thcoating'
alias slbjsync='php artisan couch:update'
alias cblog='cd /mnt/disk_2/codewiz_blog'

# Docker ps
alias dops='docker ps'
alias dock='docker-compose start'
alias undock='docker-compose stop'
alias redock='docker-compose restart'
alias dockup='docker-compose up'
alias dockupd='docker-compose up -d'
alias dockdown='docker-compose dow'
alias slbjundock='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml stop'
alias slbjdock='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml start'
alias slbjdow='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml down'
alias slbjup='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml up; cd..'

# Hg
alias hgp='hg pull'
alias hgpu='hg push'
alias hgst='hg st | cat'
alias hgm='hg merge; hg ci -m"Merge."'

# General
alias dow='cd ~/Downloads'
alias d1='cd /mnt/disk_1'
alias d2='cd /mnt/disk_2'
alias dot='cd $HOME/dotfiles'
alias sysupd='sudo apt-get update -y'
alias lsc='ls -1'
alias m='meld .'

# TMUX
alias tls='tmux ls'
alias txa='pkill -f tmux'

# ADB
alias adb='cd ~/ADB'

tp(){
	tmux a -t "$1"
}

tn(){
	tmux new -s "$1"
}

tk(){
	tmux kill-session -t "$1"
}

# SYSTEM
asearch(){
  apt-cache search "$1"
}

ainstall(){
  sudo apt-get install "$1"
}

aupdate(){
  sudo apt-get update
}

aupgrade(){
  sudo apt-get upgrade
}

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

