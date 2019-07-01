#!/bin/sh

# Brave dependencies: curl wget libappindicator3-1 liberation-fonts yum 
su -c "zypper install -y xclip tmux powerline neovim git keychain zsh ripgrep curl wget libappindicator3-1 liberation-fonts nfs-kernel-server vagrant virtualbox fzy"

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
