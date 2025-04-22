#!/usr/bin/env bash

set -eufo pipefail

packages=(
  fzf
  neovim
  tmux
  bat
  exa
  yazi
  zoxide
  fastfetch
  lazygit
  lazydocker
)

if ! command -v yay &>/dev/null; then
  echo "yay is not installed."
  exit 1
fi

for pkg in "${packages[@]}"; do
  if ! pacman -Qi "$pkg" &>/dev/null; then
    yay -Sy --noconfirm "$pkg"
  fi
done
