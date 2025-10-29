#!/bin/bash

PKG_DIR="$PKGS_SETUP_DIR/greetd"

if gum confirm "Setup greetd?"; then
  gum_style "Setting up greetd"

  sudo systemctl enable greetd
  sudo mkdir -p /etc/pam.d/
  sudo cp "$PKG_DIR/greetd.pam" /etc/pam.d/greetd

  sudo mkdir -p /etc/greetd/
  cat <<EOF | sudo tee /etc/greetd/config.toml
[terminal]
vt = 1

[default_session]
# command = "river -log-level debug 2>&1 >/tmp/river.log"
command = "tuigreet --cmd river"
user = "$USER"
EOF
fi
