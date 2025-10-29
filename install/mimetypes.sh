#!/bin/bash

# Use Zen Browser as default
xdg-settings set default-web-browser zen.desktop
xdg-mime default zen.desktop x-scheme-handler/http
xdg-mime default zen.desktop x-scheme-handler/https
