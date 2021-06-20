#!/bin/bash
cd ~
touch .gitignore

cat /dev/null > ~/.gitignore
echo ".DS_Store" >> ~/.gitignore
echo ".vscode" >> ~/.gitignore
echo ".idea" >> ~/.gitignore
echo "node_modules/" >> ~/.gitignore

git config --global core.excludesfile ~/.gitignore

echo "Setup your global .gitignore file"