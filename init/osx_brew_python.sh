#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. uninstall python2 and friends
# brew uninstall python
# rm -fr /usr/local/lib/python2.7

# 4. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# brew uninstall python3
# rm -fr /usr/local/lib/python3.4
brew install pyenv
pyenv install 2.7.9
pyenv uninstall 3.3.3
pyenv install 3.4.3
pyenv global 2.7.9
pyenv global 3.4.3
pyenv rehash

# pip3 install --upgrade pip setuptools
python -m ensurepip --upgrade # https://docs.python.org/2/library/ensurepip.html
pip install --upgrade pip

# editing
brew install vim --with-python3
brew install macvim --env-std --override-system-vim --with-python3

# testing
pip install -U coverage
pip install -U pytest
pip install -U nose

# numpy
brew tap homebrew/science
brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
brew install hdf5
pip install -U numexpr
pip install -U cython
pip install -U tables
pip install -U h5py
pip install -U pillow
pip install -U pandas
pip install -U numpy #--with-openblas
# python -c "import numpy; numpy.test() "

# scipy et al
pip install -U scipy #--with-openblas
# python -c "import scipy; scipy.test() "

pip install jedi

pip install -U psutil
pip install -U powerline-status
sh ../libs/powerline-fonts/install.sh
# mac stuff
pip install -U webassets
pip install -U markdown
pip install -U nikola
# pylab
pip install -U pyparsing
pip install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
pip install -U matplotlib
# python -c "import pylab; pylab.test() "
pip install -U imagen
pip install -U holoviews

# editing environment
brew install zmq
pip install -U pyzmq
pip install -U pygments
pip install -U tornado
pip install -U jsonschema
pip install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew install pandoc
pip install -U jinja2
pip install -U ipython[all]
# pip install -U ipython[qtconsole,notebook,test]
pip install -U runipy
#
brew install sip
brew install pyqt
pip install -U sphinx

# pygame
brew install --HEAD smpeg

pip install youtube_dl
# pyglet
pip install -U pyglet
pip install -U pyOpenGL
pip install -U gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

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
brew install ffmpeg --with-libvorbis --with-libvpx
pip install -U decorator, imageio, tqdm, moviepy

brew install wxpython
pip install -U psychopy
pip install pyprind


brew tap homebrew/science
brew install tbb
# brew install --with-qt --with-tbb --with-ffmpeg homebrew/science/opencv
# pip install -U https://github.com/sightmachine/SimpleCV/zipball/master
pip install -U SimpleCV

# mayavi
# brew install --pyqt --python --qt vtk
# brew uninstall vtk
brew install vtk5 --with-qt
# follow the caveats for the vtk (see the .path file)
pip install -U configobj
pip install -U envisage
pip install -U "Mayavi[app]"

pip install -U sympy
#machine learning
pip install -U joblib
pip install -U scikit-learn
pip install -U scikit-image

# neuralensemble
pip install -U sumatra
pip install -U NeuroTools
pip install -U brian
pip install -U pynn
#pip install hg+https://bitbucket.org/apdavison/sumatra

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install bib-tool

brew linkapps
# Remove outdated versions from the cellar
brew cleanup
