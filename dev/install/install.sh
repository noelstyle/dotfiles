#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

# httpie
pip install httpie-oauth --upgrade

brew install m-cli
RC=$?
if [[ ${RC} == 0 ]];
then
  m update install all;
fi
