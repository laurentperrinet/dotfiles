 cd /tmp
 wget http://www.nest-initiative.org/download/gplreleases/nest-2.2.2.tar.gz
 tar zxvf nest-2.2.2.tar.gz 
 mkdir build
 cd build
 ../nest-2.2.2/configure  --with-mpi --prefix=/opt/nest  --without-openmp
 make