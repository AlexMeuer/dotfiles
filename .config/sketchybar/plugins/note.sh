#!/usr/bin/env bash
source "$HOME/.config/sketchybar/colors.sh"

if [[ -z "${SKETCHY_NOTE}" ]]; then
  sketchybar --set $NAME label.drawing=off
else
  sketchybar --set $NAME label="$SKETCHY_NOTE" label.drawing=on
fi
