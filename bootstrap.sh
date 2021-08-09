#!/bin/sh

# Install missing packages
sudo apt-get update && sudo apt-get install -y git

# Clone repository
git clone https://github.com/JS2021/debian-bootstrap.git

# Move dotfiles to user's home folder
echo 'Moving dotfiles...'
cp -r debian-bootstrap/dotfiles/  ~/
echo 'Moving dotfiles completed.'
