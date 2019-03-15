#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install neovim tmux wget curl python ipython keychain gpg
ln -sf /usr/local/bin/pip3 /usr/local/bin/pip
ln -sf $HOME/src/dotfiles/ $HOME/.dotfiles
