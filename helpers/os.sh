#!/bin/bash

find_distro() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    local DISTRO=$ID
    echo "$DISTRO"
  else
    echo "unknown"
  fi
}
