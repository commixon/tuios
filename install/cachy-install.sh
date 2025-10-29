#!/bin/bash

gum_style "CachyOS packages installation..."

if gum confirm "Setup cachyos mirrors?"; then
  if ! log_cmd sudo cachyos-rate-mirrors; then prompt_error_continue "Failed updating mirrors. Continue?"; fi
fi

# TODO: base and aur packages should be split for cachy and arch vanilla
if gum confirm "Install base packages?"; then
  paru -S $(cat "$TUIOS_PATH/install/base.packages")
fi

if gum confirm "Install aur packages?"; then
  paru -S $(cat "$TUIOS_PATH/install/aur.packages")
fi

source "$TUIOS_PATH/install/pkgs-setup.sh"
