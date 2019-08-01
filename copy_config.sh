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

echo "Enter path to this directory (i.e. /home/joe)"

read dir

echo "Backup and create link for vimrc file"

backup_config ".vimrc"
link_config $dir ".vimrc"

echo "Backup and the copy alias file to home folder."

backup_config ".aliases"
link_config $dir ".aliases"

echo "Backup and the copy tmux file to home folder."

backup_config ".tmux.conf"
link_config $dir ".tmux.conf"
