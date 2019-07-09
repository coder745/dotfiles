#!/bin/bash

#############################################################
# This allows you to more easily restore a file from a stash. 
# This script could be cleaned up to make it less verbose.
#############################################################

git --no-pager stash list

echo ""
echo "Select stash number"

read number

echo ""

files=`git --no-pager stash show stash@{$number} --name-only`
all_files=($(echo "$files" | tr " " "\n"))

count=0;
for i in "${all_files[@]}" 
do
  echo $count - $i
  count=$((count + 1))
done

echo ""
echo "Select file to  stage"

read file

git checkout stash@{$number} -- ${all_files[$file]}

echo "${all_files[$file]} is now staged!"
