brew tap homebrew/versions
brew install homebrew/versions/gcc48

brew install open-mpi --enable-mpi-thread-multiple
brew install gsl
cd /tmp
wget http://www.nest-initiative.org/download/gplreleases/nest-2.2.2.tar.gz
tar zxvf nest-2.2.2.tar.gz 
mkdir build
cd build
export CC=gcc-4.8
export CXX=g++-4.8
../nest-2.2.2/configure  --with-mpi=/usr/local/Cellar/open-mpi/1.7.3 --prefix=/opt/nest  --without-openmp
#../nest-2.2.2/configure --prefix=/opt/nest  --without-openmp
make
make checkinstall
make install