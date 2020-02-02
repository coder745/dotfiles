#!/bin/bash
source "./utility_functions.sh"

current_dir=`pwd`
echo "Enter path to this directory (i.e. $current_dir)"
read dir

echo "Backup and link: .vimrc, .aliases, and .tmux.conf"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".aliases"
backup_and_link $dir ".tmux.conf"
