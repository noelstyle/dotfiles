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

## Install sqlparse for Atom Beautify
pip install --upgrade sqlparse

# Vim
## Install Vim plugins
## See https://github.com/VundleVim/Vundle.vim/issues/511
echo | echo | vim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null

# NVim
## Install NeoVim plugins
echo | echo | nvim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null
