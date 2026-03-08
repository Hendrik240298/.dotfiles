#!/usr/bin/env sh

if pamixer --get-mute 2>/dev/null | grep -qx true; then
  printf "%%{T2}%%{T-}\n"
  exit 0
fi

pct="$(pamixer --get-volume 2>/dev/null)"
[ -n "$pct" ] || exit 0

if [ "$pct" -lt 35 ]; then
  icon=""
elif [ "$pct" -lt 70 ]; then
  icon=""
else
  icon=""
fi

printf "%%{T2}%s%%{T-}\n" "$icon"
