# ref.
#   http://www.vim.org/mercurial.php
#   http://vim-jp.org/docs/build_linux.html

mkdir -p $HOME/local/src
cd $HOME/local/src
hg clone https://vim.googlecode.com/hg/ vim
hg up v7-4-355
cd vim

sudo yum install lua-devel
sudo yum install libXtst-devel
sudo yum install gtk2-devel
# ref. http://rpmfind.net/linux/rpm2html/search.php?query=xmkmf
sudo yum install imake
# ref. http://qiita.com/akase244/items/1683a2d3ec68df1a26e8
sudo yum install libXpm-devel

./configure \
  --prefix=$HOME/local \
  --with-features=huge \
  --with-x \
  --enable-gui=auto \
  --enable-gtk2-check \
  --enable-gnome-check \
  --enable-rubyinterp=yes \
  --enable-luainterp=yes \
  --enable-fail-if-missing
make
make install
