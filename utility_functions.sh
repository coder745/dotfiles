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
  ln -s $directory/$file ~/$file
}

backup_and_link() {
  backup_config $2
  link_config $1 $2
}
