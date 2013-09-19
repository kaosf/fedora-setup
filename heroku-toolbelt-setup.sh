# ref. https://toolbelt.heroku.com/standalone
wget -qO- https://toolbelt.heroku.com/install.sh | sh
echo 'export PATH="/usr/local/heroku/bin:$PATH"' >> $HOME/.zshenv
