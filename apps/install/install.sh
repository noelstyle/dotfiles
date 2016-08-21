#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

# ref: https://github.com/yadayada/acd_cli
# pip3 install --upgrade git+https://github.com/yadayada/acd_cli.git
