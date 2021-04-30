#rsync dry backup
dback(){
  rsync -av --dry-run $1 $2 --include-from="$HOME/Configs/rsync/include" --exclude-from="$HOME/Configs/rsync/ignore"
}

#rsync dry backup
back(){
  rsync -av $1 $2 --include-from="$HOME/Configs/rsync/include" --exclude-from="$HOME/Configs/rsync/ignore"
}
