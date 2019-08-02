#!/bin/bash
source "./utility_functions.sh"

echo "Enter path to this directory (i.e. /home/joe)"
read dir

echo "Backup and link: .vimrc, .aliases, and .tmux.conf"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".aliases"
backup_and_link $dir ".tmux.conf"
