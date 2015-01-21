#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python and friends

# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install sqlite
brew install python
python -m ensurepip --upgrade # https://docs.python.org/2/library/ensurepip.html

pip install --upgrade setuptools
pip install --upgrade distribute

# editing
brew install vim --with-python

# testing
pip install -U coverage
pip install -U pytest
pip install -U nose

# numpy
brew install gcc
brew install cmake
brew install fftw
#brew install umfpack
brew install libtool
brew install hdf5
brew untap homebrew/science
brew tap homebrew/science
brew untap homebrew/python
brew tap Homebrew/python
pip install -U numexpr
pip install -U cython
pip install -U tables
pip install -U pandas
brew install numpy #--with-openblas
brew test numpy

#brew install freetype libjpeg zlib libpng
#ln -s /usr/local/include/freetype2 /usr/local/include/freetype
brew install pillow

# mac stuff
brew install mackup
pip install -U nikola
# pylab
pip install -U pyparsing
pip install -U python-dateutil
# brew install homebrew/python/matplotlib --with-tex
# pip install git+git://github.com/matplotlib/matplotlib.git
pip install matplotlib
python -c "import pylab; pylab.test() "
# editing environment
# pip install -U threading
# pip install -U glob
brew install zmq
pip install -U pyzmq
pip install -U pygments
pip install -U tornado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew install pandoc
# pip install -U ipython
pip install -U ipython[zmq,qtconsole,notebook,test]
# install an offline version of mathjax
# python -c "from IPython.external import mathjax; mathjax.install_mathjax()"
pip install -U runipy
#
brew install sip
brew install pyqt
pip install -U sphinx

# scipy et al
brew install scipy #--with-openblas
#python -c "import scipy; scipy.test() "
# brew test scipy

# pygame
#brew untap samueljohn/python
#brew untap homebrew/headonly
brew install --HEAD smpeg

# pyglet
pip install -U pyglet
# pip install hg+https://pyglet.googlecode.com/hg/

# Remove outdated versions from the cellar
brew cleanup