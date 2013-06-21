#!/bin/bash

# 1. install HomeBrew + python

sh osx_brew_python.sh

# install scientific packages
brew install yaml
pip install -U pybtex

# video utilities
brew install imagemagick
brew install x264
brew install ffmpeg
brew tap homebrew/science
brew install opencv

#machine learning
pip install -U scikit-learn

# neuralensemble
pip install -U sumatra
pip install hg+https://bitbucket.org/apdavison/sumatra

# Remove outdated versions from the cellar
brew cleanup