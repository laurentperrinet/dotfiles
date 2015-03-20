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
brew install libtool
brew install hdf5
pip install -U numexpr
pip install -U cython
pip install -U tables
pip install -U pillow
pip install -U pandas
# pip install -U numpy #--with-openblas
brew install numpy
# python -c "import numpy; numpy.test() "

# scipy et al
pip install -U scipy #--with-openblas
# python -c "import scipy; scipy.test() "

pip install jedi
brew install macvim --env-std --override-system-vim

pip install -U psutil
pip install -U powerline-status
sh ../libs/powerline-fonts/install.sh
# mac stuff
pip install -U nikola
# pylab
pip install -U pyparsing
pip install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
pip install -U matplotlib
python -c "import pylab; pylab.test() "
# editing environment
brew install zmq
pip install -U pyzmq
pip install -U pygments
pip install -U tornado
pip install -U jsonschema
pip install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew install pandoc
pip install -U ipython[all]
# pip install -U ipython[qtconsole,notebook,test]
pip install -U runipy
#
brew install sip
brew install pyqt
pip install -U sphinx

# pygame
brew install --HEAD smpeg

# pyglet
pip install -U pyglet
# pip install hg+https://pyglet.googlecode.com/hg/

# Remove outdated versions from the cellar
brew cleanup
