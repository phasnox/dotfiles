#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install neovim tmux wget curl python ipython keychain
ln -sf /usr/local/bin/pip3 /usr/local/bin/pip
