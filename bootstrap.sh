#!/bin/sh

# Install missing packages
format='${binary:Package}\t${Version}\t${Architecture}\t${binary:Summary}\n'
dpkg-query -W -f=$format git || sudo apt-get install git
dpkg-query -W -f=$format wget || sudo apt-get install wget

# Move dotfiles to user's home folder
echo 'Moving dotfiles...'
cp -r dotfiles/  test-home-folder/
echo 'Moving dotfiles completed.'
