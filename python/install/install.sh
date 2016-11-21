#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

pip3 install --upgrade envtpl

pip3 install --upgrade autopep8
