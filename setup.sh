sudo yum install vim emacs zsh tmux git tig mercurial
echo "/usr/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/bin/zsh

touch $HOME/.zshenv && chmod 600 $HOME/.zshenv

# for local install
mkdir -p $HOME/local/src
mkdir -p $HOME/local/bin
echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zshenv

sudo yum groupinstall development-tools
sudo yum install gcc-c++

sudo yum install samba-client

sudo yum install python3 python-pip

# for java and javac
sudo yum install -y java-1.7.0-openjdk java-1.7.0-openjdk-devel

sudo yum install -y w3m colordiff

# for Haskell
sudo yum install -y haskell-platform
