#!/bin/bash
source "./utility_functions.sh"

current_dir=`pwd`
neovim_path="$HOME/.config/nvim"

echo "Enter path to this directory (i.e. $current_dir)"
read dir

if [ -z "$dir" ]
then
  dir=$current_dir
fi

# Create NewVim Directory for config:
if [ ! -d $neovim_path ]
then
  mkdir -p $neovim_path
fi


echo "Backup and copy: .vimrc, .bash_aliases, .functions, .terminal_changes, .tmux.conf, .ctags, and .global_ignore"
backup_and_link $dir ".vimrc"
backup_and_link $dir ".bash_aliases"
backup_and_link $dir ".functions"
backup_and_link $dir ".terminal_changes"
backup_and_link $dir ".tmux.conf"
backup_and_link $dir ".ctags"
backup_and_link $dir ".global_ignore"

backup_config "init.vim"
cat $dir/.vimrc > $dir/init.vim
cp "$dir/init.vim" "$neovim_path/init.vim"
