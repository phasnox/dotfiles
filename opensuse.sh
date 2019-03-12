#!/bin/sh

# Brave dependencies: curl wget libappindicator3-1 liberation-fonts yum 
su -c "zypper install -y xclip tmux powerline neovim git keychain zsh ripgrep curl wget libappindicator3-1 liberation-fonts yum"


# Install brave
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

cat << EOF | sudo tee /etc/yum/repos.d/brave-browser-release.repo
[brave-browser-release]
name=Brave Browser Release Channel repository
baseurl=https://brave-browser-rpm-release.s3.brave.com/x86_64/
enabled=1
EOF

sudo yum install brave-browser
