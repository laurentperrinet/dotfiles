#!/bin/bash

# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12 
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew install rsync
brew install homebrew/dupes/screen

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
#echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
brew install bash-completion

# Install everything else
brew install pkg-config
brew install git
brew install make
brew install hub

# 3. install common utilities 
brew install lftp
brew uninstall ncftp
brew install mpg123 
brew uninstall cmus # a nice command-line utility to play music files

brew install mercurial

# 4. nikola

brew install npm
npm install -g less

# sh osx_cask_base.sh
brew install macvim
#mkdir -p ~/Applications
brew linkapps
# Remove outdated versions from the cellar
brew cleanup

