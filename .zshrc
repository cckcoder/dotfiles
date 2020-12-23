export ZSH="/home/$USER/.oh-my-zsh"
source ~/.zplug/init.zsh

zplug "qoomon/zsh-lazyload"

ZSH_THEME="spaceship"


#======[SpaceShipConfig]======
SPACESHIP_DIR_SHOW="true"
#======[SpaceShipConfig]======

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

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

#======[Alias]======

# General
alias cfb='vi $HOME/.bashrc'
alias cfv='vi $HOME/dotfiles/.vimrc'
alias cfz='vi $HOME/.zshrc'
alias cft='vi $HOME/.tmux.conf'
alias cfa='vi $HOME/dotfiles/alacritty.yml'
alias sfz='source $HOME/.zshrc'
alias proj='cd /opt/project/'
alias src='cd /src'

# Server
alias nr='ssh root@192.168.80.240'
alias ti='ssh root@192.168.80.241'
alias at='ssh root@atraxrobustus.com'
alias dr='ssh root@draconarius.com'
alias fr='ssh root@frontinella.com'
alias kn='ssh root@192.168.80.184 -p 2222'
#alias gr='ssh root@192.168.80.238'
alias ar='ssh root@araniella.com'
alias pp='cd ~/youtube/music/flac'
alias gra='ssh root@103.22.183.243'
alias egg='ssh root@51.222.14.247'

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
alias slbjundock='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml stop'
alias slbjdock='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml start'
alias slbjdow='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml down'
alias slbjup='cd /mnt/disk_1/slbj/docker; docker-compose -f dev_docker-compose.yml up; cd..'

# Hg
alias hgp='hg pull'
alias hgpu='hg push'
alias hgst='hg st | bat'
alias hgm='hg merge; hg ci -m"Merge."'

# General
alias dow='cd ~/Downloads'
alias d1='cd /mnt/disk_1'
alias d2='cd /mnt/disk_2'
alias dot='cd $HOME/dotfiles'
alias sysupd='sudo apt-get update -y'
alias lsc='ls -1'
alias m='meld .'
alias pacup='sudo pacman --noconfirm -Syyu'

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

dockst(){
  if [ -z "$1" ];
    then
      docker-compose start;
    else
      docker-compose -f $1 start;
  fi
}

docksp(){
  if [ -z "$1" ];
    then
      docker-compose stop;
    else
      docker-compose -f $1 stop;
  fi
}

dockup(){
  if [ -z "$1" ];
    then
      docker-compose up -d;
    else
      docker-compose -f $1 up -d;
  fi
}

dockdw(){
  if [ -z "$1" ];
    then
      docker-compose down;
    else
      docker-compose -f $1 down;
  fi
}

dockre(){
  if [ -z "$1" ];
    then
      docker-compose restart;
    else
      docker-compose -f $1 restart;
  fi
}

yt() {
  youtube-dl -i -o "%(title)s.%(ext)s" -f best $1
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

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export TERM=xterm-256color
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
