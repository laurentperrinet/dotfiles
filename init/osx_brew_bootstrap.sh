#!/bin/bash

# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
brew cask install osxfuse
brew install encfs
#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

brew install mpg123
brew install fdupes
brew uninstall cmus # a nice command-line utility to play music files

brew install lftp
brew install mercurial

brew install rtmpdump
brew install youtube-dl
# 4. nikola

brew install npm
npm install -g less


brew install macvim
#mkdir -p ~/Applications
brew linkapps
# Remove outdated versions from the cellar
brew cleanup

