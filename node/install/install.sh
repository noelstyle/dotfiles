#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

# See https://github.com/jiahaog/nativefier
# npm list -g nativefier && npm update --silent -g nativefier || npm install --silent -g nativefier

npm list -g npm-check && npm update --silent -g npm-check || npm install --silent -g npm-check

yarn global upgrade

yarn global upgrade prettier