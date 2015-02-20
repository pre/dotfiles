#!/usr/bin/env bash

printf "Name of this machine:"
read NEWNAME

echo "Setting HostName, LocalHostName, ComputerName to $NEWNAME"
sudo scutil --set HostName $NEWNAME
sudo scutil --set LocalHostName $NEWNAME
sudo scutil --set ComputerName $NEWNAME

echo "Generating a new key, remember to set a passphrase"
ssh-keygen

cat .ssh/id_rsa.pub

echo "set key to github and hit enter"
read

mkdir -p $HOME/dev
cd $HOME/dev
git clone git@github.com:matti/dotfiles
