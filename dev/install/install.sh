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

# Travis CI command-line tool
gem install --user-install travis

# See https://github.com/Orkohunter/keep
pip install keep --upgrade


npm list -g snyk && npm update --silent -g snyk || npm install --silent -g snyk

gem install tmuxinator


if [[ ! -L "/usr/local/opt/aria2/homebrew.mxcl.aria2.plist" ]]; then
	ln -s "${PWD}/homebrew.mxcl.aria2.plist" "/usr/local/opt/aria2/homebrew.mxcl.aria2.plist"
fi