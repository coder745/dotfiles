#!/bin/bash
source "./env.sh"
source "./utility_functions.sh"

current_dir=`pwd`
neovim_path="$HOME/.config/nvim"
ctags_path="$HOME/.ctags.d/"

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

# Create Universal CTags Directory:
if [ ! -d $ctags_path ]
then
  mkdir -p $ctags_path
fi

# Setup the Global .gitignore:
/$dir/setup_global_gitignore.sh

echo "Backup and copy: .vimrc, .bash_aliases, .functions, .terminal_changes, .tmux.conf, and .ctags.
backup_and_link $dir ".vimrc"
backup_and_link $dir ".bash_aliases"
backup_and_link $dir ".functions"
backup_and_link $dir ".terminal_changes"
backup_and_link $dir ".tmux.conf"
backup_and_link $dir ".ctags"

backup_config "init.vim"
cat $dir/.vimrc > $dir/init.vim
cp "$dir/init.vim" "$neovim_path/init.vim"

backup_config ".ctags"
cat $dir/.ctags > $dir/default.ctags
cp "$dir/default.ctags" "$ctags_path/default.ctags"

if ! [[ -z "$GITHUB_DIRECTORY_SOURCE" ]] || ! [[ -z "$GITHUB_DIRECTORY_DESTINATION" ]]; then
  if ! [[ -L $GITHUB_DIRECTORY_DESTINATION ]] && ! [[ -e $GITHUB_DIRECTORY_DESTINATION ]]; then
    echo "Created Symbolic Link"
    ln -s $GITHUB_DIRECTORY_SOURCE $GITHUB_DIRECTORY_DESTINATION
  fi
fi

if ! [[ -z "$GITLAB_DIRECTORY_SOURCE" ]] || ! [[ -z "$GITLAB_DIRECTORY_DESTINATION" ]]; then
  if ! [[ -L $GITLAB_DIRECTORY_DESTINATION ]] && ! [[ -e $GITLAB_DIRECTORY_DESTINATION ]]; then
    echo "Created Symbolic Link"
    ln -s $GITLAB_DIRECTORY_SOURCE $GITLAB_DIRECTORY_DESTINATION
  fi
fi

if ! [[ -z "$DOCKER_DIRECTORY_SOURCE" ]] || ! [[ -z "$DOCKER_DIRECTORY_DESTINATION" ]]; then
  if ! [[ -L $DOCKER_DIRECTORY_DESTINATION ]] && ! [[ -e $DOCKER_DIRECTORY_DESTINATION ]]; then
    echo "Created Symbolic Link"
    ln -s $DOCKER_DIRECTORY_SOURCE $DOCKER_DIRECTORY_DESTINATION
  fi
fi
