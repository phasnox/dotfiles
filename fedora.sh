#!/usr/bin

sudo dnf update
sudo dnf install vim git dkms python vim-X11 nodejs
sudo pip install powerline-status jsbeautifier jsontool
sudo npm install -g eslint

# iSeatz stuff
sudo dnf install nfs-utils nfs-utils-dev
sudo dnf install vagrant VirtualBox
systemctl enable nfs-server.service
systemctl start nfs-server.service

# For nfs to work
firewall-cmd --permanent --add-port=111/tcp
firewall-cmd --permanent --add-port=54302/tcp
firewall-cmd --permanent --add-port=20048/tcp
firewall-cmd --permanent --add-port=2049/tcp
firewall-cmd --permanent --add-port=46666/tcp
firewall-cmd --permanent --add-port=42955/tcp
firewall-cmd --permanent --add-port=875/tcp

firewall-cmd --reload

# Needed for virtualbox nfs to work 
ln -sf ~/iseatz: /srv/iseatz
