#!/bin/sh

# Gather list of dotfiles in colum format
find . -exec cp {} ~/test-home-folder/ \;
# Move dotfiles
sudo cp ./smb.conf /etc/samba/smb.conf
