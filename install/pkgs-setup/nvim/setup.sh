#!/bin/bash

PKG_DIR="$PKGS_SETUP_DIR/nvim"

if gum confirm "Setup nvim (highly opinionated setup)?"; then
  if [ -d "$HOME/.local/share/nvim" ]; then
    rm -rf "$HOME/.local/share/nvim"
  fi
  if [ -d "$HOME/.local/state/nvim" ]; then
    rm -rf "$HOME/.local/state/nvim"
  fi
  if [ -d "$HOME/.cache/nvim" ]; then
    rm -rf "$HOME/.cache/nvim"
  fi
  if [ -d "$HOME/.config/nvim" ]; then
    rm -rf "$HOME/.config/nvim"
  fi

  cp -r $PKG_DIR/config $HOME/.config/nvim
fi
