#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export GOPATH=$HOME/BoxSync/golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/v
export ZSH=$HOME/.oh-my-zsh

export LANG=en_US.UTF-8

export PATH=/usr/local/bin:$PATH
export EVENT_NOKQUEUE=1

export COTAI_DIR="$HOME/BoxSync/golang/src/gitlab.com/vncotai"

# Customize to your needs...
plugins=(git)
# ZSH_THEME="norm"
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW=true
DEFAULT_USER="TranDuyThanh"
source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme

if [[ -f /etc/os-release ]]; then
    source ~/.zshrc.linux
else
    source ~/.zshrc.macos
fi

alias o2o='cd ~/BoxSync/golang/src/github.com/offline2online'
alias cotai='cd ~/BoxSync/golang/src/gitlab.com/vncotai'
alias doraemon='cd ~/BoxSync/golang/src/gitlab.com/tranduythanh/doraemon'
alias pubg='cd ~/BoxSync/golang/src/gitlab.com/pubgproject/backend'
alias mygit='cd ~/BoxSync/golang/src/github.com/TranDuyThanh'

alias gpl="git pull"
alias gck="git checkout"
alias gc="git commit"
alias gp="git push"
alias ga="git add"
alias gst="git status"
alias gm="git merge"
alias vimgo='vim -u ~/.vimrc.go'
alias internetspeed="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
