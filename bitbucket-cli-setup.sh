# ref.
#   https://bitbucket.org/mgemmill/bitbucket-cli
#   https://github.com/kaosf/ubuntu-setup/blob/f188489aa16b184d084d704a674aacad25bebaf0/bitbucket-cli-setup.sh

sudo yum install python-pip
sudo pip install bitbucket-cli

echo '[auth]'              > $HOME/.bitbucket
echo 'username = kaosf'    >> $HOME/.bitbucket
echo 'password = ********' >> $HOME/.bitbucket
echo '[options]'           >> $HOME/.bitbucket
echo 'scm = git'           >> $HOME/.bitbucket
echo 'protocol = ssh'      >> $HOME/.bitbucket

chmod 600 $HOME/.bitbucket
