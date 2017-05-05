#!/bin/bash

echo "Backup and the copy contents of bashrc to home folder."
cp ~/.bashrc ~/".bashrc_$(date +%F_%R)"
cat ./.bashrc > ~/.bashrc

echo "Backup and the copy vim config to home folder."
cp ~/.vimrc ~/".vimrc_$(date +%F_%R)"
cat ./.vimrc > ~/.vimrc

echo "Append gitconfig to git configuration file. Remove any extra lines."
cat ./.gitconfig >> ~/.gitconfig
vi ~/.gitconfig
