#!/bin/bash
source "./utility_functions.sh"

current_dir=`pwd`
echo "Enter path to this directory (i.e. $current_dir)"
read dir

echo "Backup and link: .vimrc, .aliases, .functions, .terminal_changes, and .tmux.conf"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".aliases"
backup_and_link $dir ".functions"
backup_and_link $dir ".terminal_changes"
backup_and_link $dir ".tmux.conf"
