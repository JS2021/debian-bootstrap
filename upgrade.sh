#!/bin/sh
sudo apt-get update && apt list --upgradable | tee ~/logs/pending-updates && sudo apt upgrade -y | tee ~/logs/applied-updates

if [ -f /var/run/reboot-required ]; then
    echo '==============[REBOOT REQUIRED]=============='
    echo 'Recently installed packages require a reboo:'
    cat /var/run/reboo-required.pkgs
else
    echo '[REBOOT NOT REQUIRED]'
fi