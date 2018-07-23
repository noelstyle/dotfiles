#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

# See https://www.maketecheasier.com/change-dns-servers-terminal-mac/
sudo networksetup -setdnsservers "Wi-Fi" 8.8.8.8 8.8.4.4
# sudo networksetup -setdnsservers "Thunderbolt Ethernet" 8.8.8.8 8.8.4.4

keybase pgp pull
