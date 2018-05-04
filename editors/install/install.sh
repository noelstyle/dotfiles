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
pip3 install --upgrade sqlparse

## Install sqlint for Sublime​Linter-contrib-sqlint
gem install --user-install sqlint

## Install pyyaml for Sublime​Linter-pyyaml
pip3 install --upgrade pyyaml

# Vim
## Install Vim plugins
## See https://github.com/VundleVim/Vundle.vim/issues/511
echo | echo | vim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null

# NVim
## Install NeoVim plugins
echo | echo | nvim +PlugUpgrade +PlugInstall +PlugUpdate +PlugClean +qall &>/dev/null

# remark-lint
npm list -g remark-lint && npm update --silent -g remark-lint || npm install --silent -g remark-lint

# dockerfilelint
npm list -g dockerfilelint && npm update --silent -g dockerfilelint || npm install --silent -g dockerfilelint

# vim-anywhere
if [[ ! -f "${HOME}/.vim-anywhere/install" ]]; then
	curl -fsSL https://raw.github.com/cknadler/vim-anywhere/master/install | bash
fi

"${HOME}/.vim-anywhere/update"