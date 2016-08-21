#!/usr/bin/env bash
THIS_DIR=$(cd "$(dirname "$0")"; pwd)

brew bundle --file="$THIS_DIR/Brewfile"

if test ! -d "${GOPATH}"
then
  echo "GOPATH is not defined!"
  exit 1
fi

# http://rclone.org/install/
if test ! -f "${GOPATH}/bin/rclone"
then
  mkdir -p "${GOPATH}/src" && go get github.com/ncw/rclone
fi
