#!/usr/bin/env bash

set -euo pipefail

read -rep "Name of this machine: " NEWNAME

echo "Setting HostName, LocalHostName, ComputerName to '$NEWNAME'"
sudo scutil --set HostName "$NEWNAME"
sudo scutil --set LocalHostName "$NEWNAME"
sudo scutil --set ComputerName "$NEWNAME"
