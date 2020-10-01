source $HOME/.antigen.zsh
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

export GOPATH=$HOME/Go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
