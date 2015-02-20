#!/usr/bin/env bash

./sudo -v || (echo "Failed sudo" ; exit 1)

set -e

echo "Install XCode from App Store"
open "/Applications/App Store.app"
echo "Press enter when XCode has been installed"
read okay 

echo "Install XCode command line tools"
xcode-select --install
echo "There should be a window opened, install it and then click enter"
read okay

echo "oh-my-zsh"
curl -L http://install.ohmyz.sh | sh

echo "homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

echo "brew cask"
brew install caskroom/cask/brew-cask

echo "rvm"
curl -sSL https://get.rvm.io | bash -s stable

echo "nvm"
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash

echo "scm_breeze"
git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh


