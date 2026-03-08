#!/usr/bin/env sh

set -eu

if command -v flameshot >/dev/null 2>&1; then
  flameshot full -c
  notify-send "Screenshot copied" "Full screenshot copied to clipboard"
  exit 0
fi

if command -v xclip >/dev/null 2>&1 && import -window root png:- | xclip -selection clipboard -t image/png; then
  notify-send "Screenshot copied" "Full screenshot copied to clipboard"
else
  notify-send "Screenshot failed" "Install flameshot or xclip"
fi
