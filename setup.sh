sudo bash osx.sh
sudo bash brew.sh

## Link vimrc
ln -s vim/.vimrc ~/.vimrc

## Make sure we change the php settings
sudo vim /etc/apache2/httpd.conf