# ref. http://qiita.com/ka_/items/0323cdec04b7ea9824cb
sudo yum -y install postgresql-server
sudo postgresql-setup initdb
sudo systemctl start postgresql.service
