#!/usr/bin/env bash

SRC_DIR=$PWD/home

PATTERN="$SRC_DIR/.[^.]*"  # Excludes . and ..


echo ""
echo "Creating a symlink from HOME to these files: "
echo ""

ls -l $PATTERN

echo ""
echo "Continue?"
read ok


for dotfile in `ls -d $PATTERN`; do
  acual=`basename "$dotfile"`
  symlink_file="$HOME/$acual" 

  ln -is "$dotfile" "$symlink_file" || ( echo "Errored with: " ; ls -ld "$symlink_file" ; echo "" )
done

echo "Done."

