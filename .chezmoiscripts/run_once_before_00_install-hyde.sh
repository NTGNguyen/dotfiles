#!/usr/bin/env bash

set -eufo pipefail

if [ -d "$HOME/HyDE" ]; then
  echo "HyDE is Installed"
  exit 0
fi

echo "Start to install HyDE"
git clone --depth 1 https://github.com/prasanthrangan/hyprdots ~/HyDE
~/HyDE/HyDE/Scripts/Install.sh
