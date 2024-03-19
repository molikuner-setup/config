# zsh config

export MOLIKUNER_CONF_DIR=~/workspace/config
source $MOLIKUNER_CONF_DIR/zsh/conf_master

export ZSH=$HOME/workspace/oh-my-zsh
ZSH_THEME="ys"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git adb tmux svn)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias nano="vim"
