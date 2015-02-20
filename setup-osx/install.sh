#!/usr/bin/env bash

source default.sh

if false;then

xcode-select --install
hitEnter

echo "Install XCode"
open "/Applications/App Store.app"
hitEnter

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

fi

