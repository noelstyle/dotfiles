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
