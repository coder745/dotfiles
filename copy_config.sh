#!/bin/bash

dir=`pwd`

echo "Backup and create link for vimrc file"

if [ -f ~/.vimrc ]; then
  cp ~/.vimrc ~/".vimrc_$(date +%F_%R)"
  rm ~/.vimrc
fi

if [ ! -L ~/.vimrc ]; then
  ln -s $dir/.vimrc ~/.vimrc
fi

echo "Backup and the copy alias file to home folder."

if [ -f ~/.aliases ]; then
  cp ~/.aliases ~/".aliases_$(date +%F_%R)"
  rm ~/.aliases
fi

if [ ! -L ~/.aliases ]; then
  ln -s $dir/.aliases ~/.aliases
fi