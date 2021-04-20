export ZSH="/home/thetinygoat/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
export NVM_LAZY_LOAD=true
plugins=(zsh-nvm git)
source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/.go
export GO111MODULE=on
export NPM_GLOBAL=$HOME/.npm-global
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:$NPM_GLOBAL/bin

# Custom functions

# venv functions
VENV_ROOT_DIR=$HOME/.venvs

# create a new virtual evt.
cv(){
    # check if $VENV_ROOT_DIR exists
    if [ ! -d "$VENV_ROOT_DIR" ];
    then
        mkdir "$VENV_ROOT_DIR"
        echo "Created $VENV_ROOT_DIR"
    else
        # check if venv name provided
        if [ $# -eq 0 ];
        then
            echo "Please provide a name for the virtual environment"
        else

            VENV_PATH=$VENV_DIR/$1

            # check if venv already exists
            if [ -d "$VENV_PATH" ];
            then
                echo "A virtual environment with name $1 already exists"
            else
                python3 -m venv "$VENV_PATH"
                echo "Created $VENV_PATH"
            fi
        fi
    fi
}

# list all virtual evts.
lv(){
    # check if $VENV_ROOT_DIR exists
    if [ ! -d "$VENV_ROOT_DIR" ];
    then
        echo "No virtual environments found"
    else   
        ls "$VENV_ROOT_DIR"
    fi
}

# activate a virtual evt.
av(){
    # check if $VENV_ROOT_DIR exists
    if [ ! -d "$VENV_ROOT_DIR" ];
    then
        echo "No virtual environments found"
    else
        # check if venv name provided
        if [ $# -eq 0 ];
        then
            echo "Please provide a name for the virtual environment"
        else

            VENV_PATH=$VENV_DIR/$1

            # check if venv already exists
            if [ ! -d "$VENV_PATH" ];
            then
                echo "No virtual environment with name $1 found"
            else
                VENV_BIN_PATH=$VENV_PATH/bin
                source "$VENV_BIN_PATH/activate"
                echo "Activated $VENV_PATH"
            fi
        fi
    fi
}

# deactivate current virtual env
dv(){
    if [[ -z "${VIRTUAL_ENV}" ]];
    then
        echo "No virtual environments are currently active"
    else
        ACTIVE_VENV=$VIRTUAL_ENV
        deactivate
        echo "Deactivated $ACTIVE_VENV"
    fi    
}

# remove a virtual env
rv(){
    # check if $VENV_ROOT_DIR exists
    if [ ! -d "$VENV_ROOT_DIR" ];
    then
        echo "No virtual environments found"
    else
        # check if venv name provided
        if [ $# -eq 0 ];
        then
            echo "Please provide a name for the virtual environment"
        else

            VENV_PATH=$VENV_DIR/$1

            # check if venv already exists
            if [ ! -d "$VENV_PATH" ];
            then
                echo "No virtual environment with name $1 found"
            else
                rm -rf "$VENV_PATH"
                echo "Removed $VENV_PATH"
            fi
        fi
    fi 
}