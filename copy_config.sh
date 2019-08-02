#!/bin/bash
backup_config() {
  file=$1
  if [ -f ~/$file ]; then
    backup_date=$(date +%F_%R)
    cp ~/$file ~/"$file"_"$backup_date"
    rm ~/$file
  fi
}

link_config() {
  directory=$1
  file=$2
  if [ ! -L ~/$file ]; then
    ln -s $directory/$file ~/$file
  fi
}

backup_and_link() {
  backup_config $2
  link_config $1 $2
}

echo "Enter path to this directory (i.e. /home/joe)"
read dir

echo "Backup and link .vimrc, .aliases, and .tmux.conf"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".aliases"
backup_and_link $dir ".tmux.conf"
