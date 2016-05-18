#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

[ -f /usr/local/opt/fzf/install ] && /usr/local/opt/fzf/install --all
