#!/bin/bash

# TODO: Update this to support any arch (eg. vanilla)
# If not CachyOS exit for now

source "$TUIOS_PATH/helpers/os.sh"
DISTRO=$(find_distro)

if [[ "$DISTRO" == "cachyos" ]]; then
  source "$TUIOS_PATH/install/cachy-install.sh"
else
  gum style --border=normal --faint --italic "For now only cachyos is supported for a Full Installation" "" \
    "You can consider running only the Dotfiles Setup" "" \
    "Exiting..."
  exit 1
fi
