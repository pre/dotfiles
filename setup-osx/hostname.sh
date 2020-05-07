#!/usr/bin/env bash

printf "Name of this machine: "
read NEWNAME

echo "Setting HostName, LocalHostName, ComputerName to '$NEWNAME'"
sudo scutil --set HostName $NEWNAME
sudo scutil --set LocalHostName $NEWNAME
sudo scutil --set ComputerName $NEWNAME
