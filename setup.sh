sudo yum install vim emacs zsh tmux git tig
echo "/usr/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/bin/zsh

sudo yum install ibus-mozc
