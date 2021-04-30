#rsync dry backup
dback(){
  rsync -av --dry-run $1 $2 --include-from="$HOME/Configs/.rsyncinclude" --exclude-from="$HOME/Configs/.rsyncignore"
}

#rsync dry backup
back(){
  rsync -av $1 $2 --include-from="$HOME/Configs/.rsyncinclude" --exclude-from="$HOME/Configs/.rsyncignore"
}
