#!/bin/sh
sudo apt-get update -y
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt-get update -y
sudo apt-get -y install fish tmux docker docker-compose git gitlab-runner make sudo vim

useradd -m -G sudo,docker -s /usr/bin/fish phasnox
useradd -m -G sudo,docker -s /usr/bin/fish gitlab-runner
