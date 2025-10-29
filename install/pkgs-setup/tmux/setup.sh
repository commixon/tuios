#!/bin/bash

if gum confirm "Setup tmux?"; then
  gum_style "Setting up tmux and tpm"

  cp -r $TUIOS_PATH/config/tmux ~/.config/

  if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi

  tmux start-server
  tmux new-session -d
  ~/.tmux/plugins/tpm/scripts/install_plugins.sh
  tmux kill-server
fi
