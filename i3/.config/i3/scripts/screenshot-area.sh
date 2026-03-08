#!/usr/bin/env sh

set -eu

if command -v flameshot >/dev/null 2>&1; then
  flameshot gui -c
  notify-send "Screenshot copied" "Area screenshot copied to clipboard"
  exit 0
fi

notify-send "Area screenshot unavailable" "Install flameshot to enable area screenshots"
