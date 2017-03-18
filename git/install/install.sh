#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

# Install git-wip
GIT_WIP_DIR="${HOME}/bin/git-wip"

if [ ! -d ${GIT_WIP_DIR} ]
then
  git clone git://github.com/bartman/git-wip.git "${GIT_WIP_DIR}"
fi

if [ ! -L /usr/local/bin/git-wip ]
then
  ln -s "${GIT_WIP_DIR}/git-wip" /usr/local/bin/git-wip
fi

# See https://github.com/so-fancy/diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
