export ZSH="/home/thetinygoat/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/Go
export GO111MODULE=on
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:$GEM_HOME/bin

# React Native settings
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.npm-global/bin

