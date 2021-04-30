# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/thetinygoat/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
export GOPATH=$HOME/.go
export GO111MODULE=on
export NPM_GLOBAL=$HOME/.npm-global
export FLUTTER_PATH=$HOME/.flutter-sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH="$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:$NPM_GLOBAL/bin:$FLUTTER_PATH/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

# Load functions
source "$HOME/Configs/zsh/functions/rsync.sh"
source "$HOME/Configs/zsh/functions/python.sh"




# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
