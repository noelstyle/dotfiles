#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"


# Atom
## Install Atom plugins
while IFS='' read -r PLUGIN || [[ -n "$PLUGIN" ]]; do
  if test ! -d "$HOME/.atom/packages/$PLUGIN"
  then
    apm install $PLUGIN
  fi
done < "$THIS_DIR/atom-packages.txt"

# Vim
## Install Vim plugins
vim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null


# NVim
## Install NeoVim plugins
nvim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null
