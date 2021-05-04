createdb(){
    sudo -iu postgres createdb $1
}
dropdb(){
    sudo -iu postgres dropdb $1
}