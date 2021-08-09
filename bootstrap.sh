#!/bin/sh

sudo apt-get install -y git
# Move dotfiles to user's home folder
echo 'Moving dotfiles'
cp -r dotfiles/  test-home-folder/
# Move dotfiles
echo "Moving dotfiles completed."


#./configs/move-configs.sh
#./dotfiles/move-dotfiles.sh
#./scripts/move-scripts.sh
