export ZSH="/home/thetinygoat/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/Go
export GO111MODULE=on
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin

