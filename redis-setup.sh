cd $HOME/local/src
wget http://download.redis.io/releases/redis-2.6.16.tar.gz
tar xzf redis-2.6.16.tar.gz
cd redis-2.6.16

make test
#=> You need tcl 8.5 or newer in order to run the Redis test

sudo yum install -y tcl

make test PREFIX=$HOME/local
make PREFIX=$HOME/local
make install PREFIX=$HOME/local
# following binaries are installed
#   redis-benchmark
#   redis-check-aof
#   redis-check-dump
#   redis-cli
#   redis-server

# launch server
redis-server
# connect to server by client
redis-cli
