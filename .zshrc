export ZSH="/home/thetinygoat/.oh-my-zsh"
ZSH_THEME="mrtazz"
HYPHEN_INSENSITIVE="true"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/Go
export GO111MODULE=on
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin
export FZF_DEFAULT_COMMAND="rg --files --hidden --no-ignore-vcs -g '!node_modules' -g '!.git'"

# React Native settings
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.npm-global/bin
