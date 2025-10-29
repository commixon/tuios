#!/bin/bash

prompt_error_continue() {
  if ! gum confirm "$@"; then
    exit 1
  fi
}

gum_style() {
  gum style --faint --italic --border="normal" "$@"
}
