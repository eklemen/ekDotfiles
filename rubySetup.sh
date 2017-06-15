#!/bin/bash
ME=$(whoami)
sudo -u ${ME} gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo -u ${ME} curl -L https://get.rvm.io | bash -s stable –ruby
sudo -u ${ME} rvm install ruby --latest
sudo gem install rails