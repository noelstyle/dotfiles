#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

sudo easy_install pip

pip3 install --upgrade pip setuptools wheel

pip3 install --upgrade envtpl

pip3 install --upgrade autopep8

pip3 install --user --upgrade pipenv