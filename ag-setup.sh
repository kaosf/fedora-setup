# ref.
#   https://github.com/ggreer/the_silver_searcher
#   http://forums.fedoraforum.org/showthread.php?t=117529
sudo yum -y install pcre-devel xz-devel automake
git clone https://github.com/ggreer/the_silver_searcher
cd the_silver_searcher
./build.sh --prefix=$HOME/local
make
make install
