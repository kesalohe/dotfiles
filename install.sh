#!/bin/env sh

stow -t "$HOME" nvim
stow -t "$HOME" tmux
stow -t "$HOME" fish
stow -t "$HOME" alacritty
stow -t "$HOME" sway

# https://github.com/nvm-sh/nvm#manual-install
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

