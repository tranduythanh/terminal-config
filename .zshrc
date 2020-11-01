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

export GOPATH=~/BoxSync/golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/v
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools

export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

if [[ -s $HOME/.rvm/scripts/rvm ]]; then
fi

# Customize to your needs...
plugins=(git)
# ZSH_THEME="norm"
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW=true
DEFAULT_USER="TranDuyThanh"
source $ZSH/oh-my-zsh.sh

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias tailf="tail -f"
alias gpl="git pull"
alias gck="git checkout"
alias vimgo='vim -u ~/.vimrc.go'
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast:"
alias internetspeed="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias dockerdb="psql -h 192.168.99.100 --username=postgres "
alias arduino="/Applications/Arduino.app/Contents/MacOS/Arduino"
alias python2="/usr/local/Cellar/python@2/2.7.15/bin/python"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"
alias pip2="/usr/local/bin/pip"

alias aws='/usr/local/bin/aws2'
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC -I rc"
alias pycharm="/Applications/PyCharm\ CE.app/Contents/MacOS/pycharm"

export PATH=$PATH:/usr/local/gcc-arm-none-eabi-5_3-2016q1/bin

export LANG=en_US.UTF-8
export PATH="/Applications/XAMPP/xamppfiles/bin:$PATH"

alias md2word=md2word # alias the function below
function md2word () {
    pandoc -o $2 -f markdown -t docx $1
}

export "JAVA_HOME=`/usr/libexec/java_home -v 1.8`"

export PATH=/usr/local/bin:$PATH
export EVENT_NOKQUEUE=1

export PYTHONPATH=$PYTHONPATH:/Users/TranDuyThanh/BoxSync/golang/src/fi_ai/pythonlib

# ifconfig lo0 alias 10.200.10.1/25
alias timeout='gtimeout'

export RANCHER_URL=http://103.234.37.70:8080/
export RANCHER_ACCESS_KEY=B63414AC6B3700561D65
export RANCHER_SECRET_KEY=oMQDZU3FvNXWesbiBepwSrz9xUBQBDqYAoBvJQes

alias kint='kubectl config set-context gke_docomodigital-146813_asia-east1-c_keymono-staging --namespace=default'
alias o2o='cd ~/BoxSync/golang/src/github.com/offline2online'
alias cotai='cd ~/BoxSync/golang/src/gitlab.com/vncotai'
alias doraemon='cd ~/BoxSync/golang/src/gitlab.com/tranduythanh/doraemon'
alias pubg='cd ~/BoxSync/golang/src/gitlab.com/pubgproject/backend'
alias mygit='cd ~/BoxSync/golang/src/github.com/TranDuyThanh'

export E2E_DEV_TEST_ENV_LOCAL=1

source "/Users/TranDuyThanh/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/usr/local/share/npm/bin:$PATH

export PATH=/Library/TeX/texbin:$PATH


# sunnysoft - google BigQuery
# export GOOGLE_APPLICATION_CREDENTIALS=$HOME/DocomoDigital-bigquery-dev.json
export PROJECT=docomodigital-146813
export DATASET=nomo_events_test
export TABLE=Sample

#export ACCESS_TOKEN="$(gcloud auth application-default print-access-token)"export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PATH="$PATH:/Users/TranDuyThanh/flutter/bin"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export COTAI_DIR="/Users/TranDuyThanh/BoxSync/golang/src/gitlab.com/vncotai"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/TranDuyThanh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/TranDuyThanh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/TranDuyThanh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/TranDuyThanh/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/TranDuyThanh/.sdkman"
[[ -s "/Users/TranDuyThanh/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/TranDuyThanh/.sdkman/bin/sdkman-init.sh"

# rust lang
source $HOME/.cargo/env