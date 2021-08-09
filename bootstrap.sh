#!/bin/sh

# Set working directory to 
cd "$(dirname "$0")"

# Install missing packages
sudo apt-get update && sudo apt-get install -y git

# Move dotfiles to user's home folder
echo 'Moving dotfiles...'
cp -r dotfiles/.  ~/
echo 'Moving dotfiles completed.'
