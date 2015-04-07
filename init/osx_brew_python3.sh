#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. uninstall python2 and friends
brew uninstall python
rm -fr /usr/local/lib/python2.7 

# 4. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install python3
pip3 install --upgrade pip setuptools
python3 -m ensurepip3 --upgrade # https://docs.python.org/2/library/ensurepip.html

# editing
brew install vim --with-python3
brew install macvim --env-std --override-system-vim --with-python3


# testing
pip3 install -U coverage
pip3 install -U pytest
pip3 install -U nose

# numpy
brew tap homebrew/science
brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
brew install hdf5
pip3 install -U numexpr
pip3 install -U cython
pip3 install -U tables
pip3 install -U h5py
pip3 install -U pillow
pip3 install -U pandas
pip3 install -U numpy #--with-openblas
python3 -c "import numpy; numpy.test() "

# scipy et al
pip3 install -U scipy #--with-openblas
python3 -c "import scipy; scipy.test() "

pip3 install jedi

pip3 install -U psutil
pip3 install -U powerline-status
sh ../libs/powerline-fonts/install.sh
# mac stuff
pip3 install -U webassets
pip3 install -U markdown
pip3 install -U nikola
# pylab
pip3 install -U pyparsing
pip3 install -U python-dateutil
# pip3 install git+git://github.com/matplotlib/matplotlib.git
pip3 install -U matplotlib
# python -c "import pylab; pylab.test() "
pip3 install -U holoviews

# editing environment
brew install zmq
pip3 install -U pyzmq
pip3 install -U pygments
pip3 install -U tornado
pip3 install -U jsonschema
pip3 install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew install pandoc
pip3 install -U ipython[all]
# pip3 install -U ipython[qtconsole,notebook,test]
pip3 install -U runipy
#
brew install sip
brew install pyqt
pip3 install -U sphinx

# pygame
brew install --HEAD smpeg

# pyglet
pip3 install -U pyglet
# pip3 install hg+https://pyglet.googlecode.com/hg/

# Remove outdated versions from the cellar
brew cleanup
