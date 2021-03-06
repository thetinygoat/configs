# venv functions
VENV_ROOT_DIR=$HOME/.venvs

# create a new virtual evt.
cvenv(){
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
lvenv(){
    # check if $VENV_ROOT_DIR exists
    if [ ! -d "$VENV_ROOT_DIR" ];
    then
        echo "No virtual environments found"
    else   
        ls "$VENV_ROOT_DIR"
    fi
}

# activate a virtual evt.
avenv(){
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
dvenv(){
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
rvenv(){
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
