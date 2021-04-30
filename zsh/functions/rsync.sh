#rsync dry backup
dback(){
  rsync -av --dry-run $1 $2 --include-from="$HOME/Dotfiles/rsync/include" --exclude-from="$HOME/Dotfiles/rsync/ignore"
}

#rsync dry backup
back(){
  rsync -av $1 $2 --include-from="$HOME/Dotfiles/rsync/include" --exclude-from="$HOME/Dotfiles/rsync/ignore"
}
