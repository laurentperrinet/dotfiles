#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
#ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# It is recommend to run the bootstrap_brew.sh script to obtain core packages

# 3. install python and friends

# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install python

pip install --upgrade distribute
# editing environment
pip install -U pyzmq
pip install -U ipython
brew install pyqt
pip install -U sphinx
pip install -U spyder

# testing
pip install -U nose
easy_install pyreport

# numpy et al
brew install gfortran
brew install cmake
brew install fftw
brew install umfpack
brew install libtool
pip install -U numpy
pip install -U PIL
pip install -U scipy
pip install -U matplotlib
# pip install git+git://github.com/matplotlib/matplotlib.git


# pyglet
pip install -U Opengl
pip install -U glumpy

pip install Mercurial
pip install hg+https://pyglet.googlecode.com/hg/
#easy_install pyobjc-core
#easy_install pyobjc
#hg clone https://pyglet.googlecode.com/hg/ pyglet
#cd pyglet
#python setup.py install --user
#cd ..
#rm -fr pyglet

# video utilities
brew install ffmpeg x264

# Remove outdated versions from the cellar
brew cleanup