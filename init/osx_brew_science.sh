#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# It is recommend to run the bootstrap_brew.sh script to obtain core packages

# 3. install scientific packages
brew install yaml
pip install -U pybtex

# neuralensemble
pip install -U sumatra
pip install hg+https://bitbucket.org/apdavison/sumatra

# Remove outdated versions from the cellar
brew cleanup