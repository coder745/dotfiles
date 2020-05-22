#!/bin/bash
source "./utility_functions.sh"

current_dir=`pwd`
echo "Enter path to this directory (i.e. $current_dir)"
read dir

if [ -z "$dir" ]
then
  dir=$current_dir
fi

echo "Backup and link: .vimrc, .bash_aliases, .functions, .terminal_changes, and .tmux.conf"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".bash_aliases"
backup_and_link $dir ".functions"
backup_and_link $dir ".terminal_changes"
backup_and_link $dir ".tmux.conf"
