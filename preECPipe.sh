sudo apt-get install g++
sudo apt-get install make
sudo apt-get install gf-complete-tools
sudo apt-get install unzip
wget http://download.redis.io/releases/redis-3.2.8.tar.gz
wget https://github.com/redis/hiredis/archive/v0.14.1.tar.gz
wget https://github.com/jemalloc/jemalloc/archive/5.2.1.tar.gz
wget https://github.com/ceph/gf-complete/archive/master.zip

tar xzvf v0.14.1.tar.gz
cd hiredis-0.14.1
make
sudo make install
cd ..

tar xzvf 5.2.1.tar.gz
cd jemalloc-5.2.1
./autogen.sh
make
sudo make install
cd ..

unzip master.zip
cd gf-complete-master
./autogen.sh
./configure.sh
make
sudo make install
cd ..

tar xzvf redis-3.2.8.tar.gz
cd redis-3.2.8
make
sudo make install
cd utils
sudo ./install_server.sh
sudo /etc/init.d/redis_6379 stop
sudo vim /etc/redis/6379.conf
sudo /etc/init.d/redis_6379 start
cd ../..

cd ecpipe-v1.1
make clean
make

