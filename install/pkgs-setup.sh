#!/bin/bash

export PKGS_SETUP_DIR="$TUIOS_PATH/install/pkgs-setup"

for dir in "$PKGS_SETUP_DIR/"*/; do
  [ -d "$dir" ] && source "${dir}/setup.sh"
done
