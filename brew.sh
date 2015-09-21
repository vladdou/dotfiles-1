#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  sudo -v
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install command-line tools
brew tap Homebrew/bundle
brew bundle Brewfile
brew linkapps
brew cleanup

# Install OSX apps
brew tap caskroom/cask
brew install caskroom/cask/brew-cask
brew bundle Caskfile
brew cask cleanup
