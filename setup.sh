sudo yum install vim emacs zsh tmux git tig mercurial
echo "/usr/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/bin/zsh

sudo yum install ibus-mozc

touch $HOME/.zshenv && chmod 600 $HOME/.zshenv

# for local install
mkdir -p $HOME/local/src
mkdir -p $HOME/local/bin
echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zshenv

sudo yum groupinstall development-tools
sudo yum install gcc-c++

sudo yum install samba-client
