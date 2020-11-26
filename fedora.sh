#!/usr/bin

sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf update
sudo dnf install -y \
    fish vim git dkms python vim-X11 nodejs neovim brave-browser\
    tmux util-linux-user docker docker-compose the_silver_searcher\
    elixir erlang-certifi libsodium-devel\
    python2 g++ gcc make gcc-c++ sysconftool automake make gcc-c++ kbd\
    libX11-devel libX11-devel fontconfig-devel libXft-devel libXinerama-devel

pip install powerline-status jsbeautifier jsontool
npm install -g eslint

# iSeatz stuff
#sudo dnf install nfs-utils nfs-utils-dev
#sudo dnf install vagrant VirtualBox
#systemctl enable nfs-server.service
#systemctl start nfs-server.service

# For nfs to work
#firewall-cmd --permanent --add-port=111/tcp
#firewall-cmd --permanent --add-port=54302/tcp
#firewall-cmd --permanent --add-port=20048/tcp
#firewall-cmd --permanent --add-port=2049/tcp
#firewall-cmd --permanent --add-port=46666/tcp
#firewall-cmd --permanent --add-port=42955/tcp
#firewall-cmd --permanent --add-port=875/tcp

#firewall-cmd --reload
#
## Needed for virtualbox nfs to work 
#ln -sf ~/iseatz: /srv/iseatz

(cd suckless/st && make clean install)
(cd suckless/dwm && make clean install)
