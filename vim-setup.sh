# ref.
#   http://www.vim.org/mercurial.php
#   http://vim-jp.org/docs/build_linux.html

cd $HOME/local/src
hg clone https://vim.googlecode.com/hg/ vim
cd vim

./configure \
  --prefix=$HOME/local \
  --with-features=huge \
  --enable-gui=no \
  --enable-perlinterp \
  --enable-pythoninterp \
  --with-python-config-dir=/usr/lib64/python2.7/config \
  --enable-python3interp \
  --with-python3-config-dir=/usr/lib64/python3.3/config-3.3m \
  --enable-rubyinterp \
  --enable-fail-if-missing
#=>
# checking if compile and link flags for Python are sane... no: PYTHON DISABLED
# configure: error: could not configure python

./configure \
  --prefix=$HOME/local \
  --with-features=huge \
  --enable-gui=no \
  --enable-perlinterp \
  --enable-rubyinterp \
  --enable-fail-if-missing

make
#=>
# /usr/bin/perl /usr/share/perl5/ExtUtils/xsubpp -prototypes -typemap \
#     /usr/share/perl5/ExtUtils/typemap if_perl.xs >> auto/if_perl.c
# gcc -c -I. -Iproto -DHAVE_CONFIG_H   -I/usr/local/include  -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/if_perl.o auto/if_perl.c
# if_perl.xs:28:20: 致命的エラー: EXTERN.h: そのようなファイルやディレクトリはありません
#  #include <EXTERN.h>
