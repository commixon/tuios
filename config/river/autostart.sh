#!/bin/bash

pkill -f kanshi
kanshi &

pkill -f waybar
waybar &

pkill -f dunst
dunst &

pkill -f wl-paste
wl-paste --type text --watch cliphist store &

pkill -f wl-clip-persist
wl-clip-persist --clipboard regular &

foot --server &

pkill -f swayidle

swayidle -w \
  timeout 600 "waylock.sh" \
  timeout 660 "wlopm --off '*'" resume "wlopm --on '*'" &
