#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# you should have run the bootstrap_brew.sh script before to get core packages

# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install python

pip install --upgrade distribute
pip install -U ipython
brew install pyqt
pip install -U sphinx
pip install -U spyder

# numpy et al
brew install gfortran
brew install libtool libagg
pip install -U numpy
pip install -U scipy
pip install -U matplotlib
# pip install git+git://github.com/matplotlib/matplotlib.git

#pip install pyOpenGL
#pip install glumpy

# pyglet
pip install -U pyglet

#pip install Mercurial
#pip install https://pyglet.googlecode.com/hg/
#easy_install pyobjc-core
#easy_install pyobjc
#hg clone https://pyglet.googlecode.com/hg/ pyglet
#cd libs/pyglet
#sudo python setup.py install
#cd ../..
#rm -fr pyglet

#hg clone https://code.google.com/r/evilphillip-cocoa-ctypes2/
#cd evilphillip-cocoa-ctypes2
#python setup.py install
#cd ..
#rm -fr evilphillip-cocoa-ctypes2

# video utilities
brew install ffmpeg x264

# Remove outdated versions from the cellar
brew cleanup