sudo yum install libevent-devel

cd $HOME/local/src
wget http://downloads.sourceforge.net/tmux/tmux-2.0.tar.gz
tar xf tmux-2.0.tar.gz
cd tmux-2.0
./configure --prefix=$HOME/local
make
make install
