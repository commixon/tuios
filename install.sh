#!/bin/bash

set -eEo pipefail

clear

logo='▄▄▄▄▄▄• ▄▌▪        .▄▄ · 
•██  █▪██▌██ ▪     ▐█ ▀. 
 ▐█.▪█▌▐█▌▐█· ▄█▀▄ ▄▀▀▀█▄
 ▐█▌·▐█▄█▌▐█▌▐█▌.▐▌▐█▄▪▐█
 ▀▀▀  ▀▀▀ ▀▀▀ ▀█▄▀▪ ▀▀▀▀ '

echo -e "$logo\n\n"

if ! [ -x "$(command -v git)" ]; then
  echo "Installing git"
  sudo pacman -Syu --noconfirm git
fi
if ! [ -x "$(command -v gum)" ]; then
  echo "Installing gum"
  sudo pacman -Syu --noconfirm gum
fi

TUIOS_REPO="${TUIOS_REPO:-https://codeberg.org/commixon/tuios.git}"
TUIOS_BRANCH="${TUIOS_BRANCH:-main}"

echo "Cloning ${TUIOS_REPO}"
rm -rf ~/.local/share/tuios/
git clone "${TUIOS_REPO}" ~/.local/share/tuios >/dev/null

if [[ $TUIOS_BRANCH != "main" ]]; then
  echo -e "Using branch: $TUIOS_BRANCH"
  cd ~/.local/share/tuios
  git fetch origin "${TUIOS_BRANCH}" && git checkout "${TUIOS_BRANCH}"
  cd -
fi

source ~/.local/share/tuios/start.sh
