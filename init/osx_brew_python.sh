#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
sh osx_brew_bootstrap.sh

# 3. install python and friends

# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install python

pip install --upgrade distribute
# editing environment
pip install -U threading
pip install -U glob
pip install -U pyzmq
pip install -U tornado
pip install -U ipython
brew install sip
brew install pyqt
pip install -U sphinx
pip install -U spyder
pip install -U progressbar

# testing
pip install -U nose
easy_install pyreport

# numpy et al
brew install gfortran
brew install cmake
brew install fftw
brew install umfpack
brew install libtool
brew install hdf5
pip install -U numexpr
pip install -U cython
pip install -U tables
pip install -U numpy
python -c "import numpy; numpy.test()"
brew install libjpeg
pip install -U PIL
brew install swig
pip install -U scipy
python -c "import scipy; scipy.test() "
brew install freetype
pip install -U matplotlib
python -c "import pylab; pylab.test() "
# pip install git+git://github.com/matplotlib/matplotlib.git

# pygame
brew tap samueljohn/python
brew tap homebrew/headonly
brew install --HEAD smpeg
brew install samueljohn/python/pygame

# pyglet
pip install -U Opengl
pip install -U glumpy

pip install -U pyglet
#pip install hg+https://pyglet.googlecode.com/hg/
#easy_install pyobjc-core
#easy_install pyobjc
#hg clone https://pyglet.googlecode.com/hg/ pyglet
#cd pyglet
#python setup.py install --user
#cd ..
#rm -fr pyglet

pip install -U PyOpenGL PyOpenGL_accelerate
pip install -U glumpy

# Remove outdated versions from the cellar
brew cleanup