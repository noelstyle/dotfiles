#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

rbenv install 2.5.3
rbenv global 2.5.3
