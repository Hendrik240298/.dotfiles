#!/usr/bin/env sh

if command -v x-terminal-emulator >/dev/null 2>&1; then
  exec x-terminal-emulator -e nmtui
fi

if command -v wezterm >/dev/null 2>&1; then
  exec wezterm start -- nmtui
fi

if command -v alacritty >/dev/null 2>&1; then
  exec alacritty -e nmtui
fi

notify-send "No terminal found" "Install x-terminal-emulator, wezterm, or alacritty"
