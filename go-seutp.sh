# ref. http://golang.org/doc/install
wget http://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz
tar xzf go1.1.2.linux-amd64.tar.gz
mv go $HOME/.go
echo 'export GOROOT=$HOME/.go' >> .zshenv
echo 'export PATH=$PATH:$GOROOT/bin' >> .zshenv
echo 'export GOPATH=$HOME/.gocode' >> .zshenv
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.zshenv
source $HOME/.zshenv

# ref. https://github.com/heroku/hk
# Mercurial ("hg" command) is required
# Heroku Toolbelt ("heroku" command) is required
sudo yum install mercurial
go get github.com/heroku/hk
APITOKEN=`heroku auth:token`
echo 'machine api.heroku.com'         >  $HOME/.netrc
echo '  login '$EMAIL                 >> $HOME/.netrc
echo '  password '$APITOKEN           >> $HOME/.netrc
echo 'machine core.heroku.com'        >> $HOME/.netrc
echo '  login '$EMAIL                 >> $HOME/.netrc
echo '  password '$APITOKEN           >> $HOME/.netrc
chmod 600 $HOME/.netrc
