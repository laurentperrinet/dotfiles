#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
sh osx_brew_bootstrap.sh

# 3. install python and friends

# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install sqlite
brew install python --with-brewed-tk

pip install --upgrade setuptools
pip install --upgrade distribute

# editing 
brew install vim --with-python

# numpy
brew install gfortran
brew install cmake
brew install fftw
#brew install umfpack
brew install libtool
brew install hdf5
# TODO : check this is the good way to do it
brew tap homebrew/python
brew install numpy
python -c "import numpy; numpy.test()"
pip install -U numexpr
pip install -U cython
pip install -U tables

# pylab
pip install -U pyparsing
pip install -U python-dateutil
brew install matplotlib --with-tex
# pip install git+git://github.com/matplotlib/matplotlib.git
python -c "import pylab; pylab.test() "
# editing environment
pip install -U threading
pip install -U glob
brew install zmq
pip install -U pyzmq
pip install -U tornado
# to use nbconvert with the ipython notebook, you need to install pandoc:
# sh osx_install_pandoc.sh
pip install -U ipython
brew install sip
brew install pyqt
pip install -U sphinx
pip install -U progressbar

# testing
pip install -U nose
pip install -U pytest 

# scipy et al
brew install libjpeg zlib libpng
pip install -U PIL
brew install scipy
python -c "import scipy; scipy.test() "

# pygame
brew tap samueljohn/python
brew tap homebrew/headonly
brew install --HEAD smpeg
brew install samueljohn/python/pygame

# pyglet
#pip install -U Opengl
#pip install -U PyOpenGL PyOpenGL_accelerate
pip install -U glumpy

pip install -U pyglet
#pip install hg+https://pyglet.googlecode.com/hg/

# Remove outdated versions from the cellar
brew cleanup