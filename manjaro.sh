#!/bin/sh
sudo pacman -Syu git gitprompt-rs zsh keychain brave tmux neovim the_silver_searcher docker dolphin-plugins kleopatra fish xclip tmux powerline neovim git keychain zsh ripgrep curl wget ttf-liberation nfs-utils vagrant virtualbox fzy


# Install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

echo ""
echo "To install dropbox for dolphin see dolphin-plugins"
echo "To ssh without keys cat somepubkey.pub > ~/.ssh/authorized_keys"
echo ""
