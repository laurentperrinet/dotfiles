#!/bin/bash

# 1. install HomeBrew + python
sh osx_brew_python.sh

# install scientific packages
brew install yaml
pip install -U pybtex

# video utilities
pip install -U svgwrite
brew install imagemagick
brew install x264
brew install ffmpeg
brew tap homebrew/science
brew install tbb
brew install --with-qt --with-tbb --with-ffmpeg homebrew/science/opencv
pip install https://github.com/sightmachine/SimpleCV/zipball/master

# mayavi
brew install --pyqt --python --qt vtk
pip install configobj
pip install envisage
pip install "Mayavi[app]"

pip install -U sympy
#machine learning
pip install -U scikit-learn

# neuralensemble
pip install -U sumatra
pip install -U NeuroTools
pip install -U pynn
#pip install hg+https://bitbucket.org/apdavison/sumatra

# latex, bibliography and friends
brew install bib-tool

# Remove outdated versions from the cellar
brew cleanup