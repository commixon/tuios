#!/bin/bash

set -eEo pipefail

clear

export TUIOS_PATH="$HOME/.local/share/tuios"
export TUIOS_CONFIG_PATH="$TUIOS_PATH/config"
export TUIOS_LOG_PATH="$HOME/tuios-install.log"
touch $TUIOS_LOG_PATH
echo >$TUIOS_LOG_PATH

source "$TUIOS_CONFIG_PATH/tuios/theme/logo.sh"
source "$TUIOS_PATH/helpers/theme.sh"
source "$TUIOS_PATH/helpers/log.sh"
source "$TUIOS_PATH/helpers/prompt.sh"

install_choice=$(gum choose "Full Installation" "Dotfiles setup")
if [[ "$install_choice" == "Full Installation" ]]; then
  source "$TUIOS_PATH/install/install.sh"
  source "$TUIOS_PATH/install/mimetypes.sh"

  gum_style "Setting up dotfiles"
  cp -r ${TUIOS_CONFIG_PATH}/* ~/.config/
  mkdir -p ~/.local/bin
  cp -r $TUIOS_PATH/bin/* ~/.local/bin
else
  gum_style "Setting up dotfiles"
  cp -r ${TUIOS_CONFIG_PATH}/* ~/.config/
  mkdir -p ~/.local/bin
  cp -r $TUIOS_PATH/bin/* ~/.local/bin
fi

clear

echo -e "$TUIOS_LOGO\n"

echo "Finished..."

if gum confirm "Reboot now?"; then
  echo "Rebooting..."
  sudo reboot
else
  echo "It is strongly suggested that you reboot..."
fi
