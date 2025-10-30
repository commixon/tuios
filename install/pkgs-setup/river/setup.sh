#!/bin/bash

gum_style "Setting up river"

cat <<EOF | sudo tee /usr/share/wayland-sessions/river-debug.desktop
[Desktop Entry]
Name=River Debug
Comment=A dynamic tiling Waylad compositor
Exec=river -log-level debug 2>&1 > /tmp/river.log
Type=Application
EOF
