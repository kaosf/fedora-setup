# ref. http://stedolan.github.io/jq/download/
wget http://stedolan.github.io/jq/download/source/jq-1.3.tar.gz
tar xzf jq-1.3.tar.gz
cd jq-1.3
./configure --prefix=$HOME/local
make
make install
