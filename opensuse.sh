#!/bin/sh

# Brave dependencies: curl wget libappindicator3-1 liberation-fonts yum 
su -c "zypper install -y the_silver_searcher docker dolphin-plugins kleopatra fish xclip tmux powerline neovim git keychain zsh ripgrep curl wget libappindicator3-1 liberation-fonts nfs-kernel-server vagrant virtualbox fzy"

# Install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# Add symlink to home
ln -sf $(pwd) ~/.dotfiles

sudo systemctl enable sshd.service
sudo systemctl start sshd.service
sudo firewall-cmd --permanent --add-port=22/tcp

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo systemctl enable nfs-server.service
sudo systemctl start nfs-server.service

# For nfs to work
sudo firewall-cmd --permanent --add-port=111/tcp
sudo firewall-cmd --permanent --add-port=54302/tcp
sudo firewall-cmd --permanent --add-port=20048/tcp
sudo firewall-cmd --permanent --add-port=2049/tcp
sudo firewall-cmd --permanent --add-port=46666/tcp
sudo firewall-cmd --permanent --add-port=42955/tcp
sudo firewall-cmd --permanent --add-port=875/tcp

sudo firewall-cmd --reload

echo ""
echo "To install dropbox for dolphin see dolphin-plugins"
echo "To ssh without keys cat somepubkey.pub > ~/.ssh/authorized_keys"
echo ""
