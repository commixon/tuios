#!/bin/bash

if gum confirm "Setup python?"; then
  gum_style "Installing python with pyenv (GUI extensions will not be installed at this point)"

  if ! log_cmd pyenv install 3.13.2; then prompt_error_continue "Failed installing python with pyenv. Continue?"; fi
  if ! log_cmd pyenv global 3.13.2; then prompt_error_continue "Failed setting global python with peynv. Continue?"; fi
fi
