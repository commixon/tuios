#!/bin/bash

source ~/.config/tuios/theme/colors.sh

timestamp=$(date +%F-%R:%S)

chayang || exit 1

export WAYLAND_DEBUG=1
waylock -init-color "$RIVER_COLOR1" -input color "$RIVER_COLOR4" --fork-on-lock >/tmp/waylock-${timestamp}.log 2>&1
