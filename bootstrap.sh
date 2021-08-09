#!/bin/sh

# Install missing packages
format='${binary:Package}\t${Version}\t${Architecture}\t${binary:Summary}\n'
dpkg-query -W -f=$format git || sudo apt-get install git

# Clone repository
git clone https://github.com/JS2021/debian-bootstrap.git

# Move dotfiles to user's home folder
echo 'Moving dotfiles...'
cp -r dotfiles/  ~/
echo 'Moving dotfiles completed.'
