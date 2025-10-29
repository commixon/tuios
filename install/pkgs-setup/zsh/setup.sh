#!/bin/bash

PKG_DIR="$PKGS_SETUP_DIR/zsh"

if gum confirm "Setup zsh?"; then
  gum_style "Setting up oh-my-zsh to ~/.oh-my-zsh"
  if gum confirm "Change default shell to zsh?"; then
    chsh -s $(which zsh)
  fi
  cp $PKG_DIR/zshrc $HOME/.zshrc
else
  gum_style "Skipping zsh setup..."
fi
