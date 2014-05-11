#!/bin/bash

# 1. install HomeBrew + python
sh osx_brew_python.sh

# install scientific packages
brew install libyaml
pip install -U pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2
# video utilities
pip install -U svgwrite
brew install imagemagick
brew install x264
brew install ffmpeg
brew tap homebrew/science
brew install tbb
brew install --with-qt --with-tbb --with-ffmpeg homebrew/science/opencv
pip install -U https://github.com/sightmachine/SimpleCV/zipball/master

# mayavi
# brew install --pyqt --python --qt vtk
brew uninstall vtk
brew install homebrew/versions/vtk5 --with-qt
pip install -U configobj
pip install -U envisage
pip install -U "Mayavi[app]"

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