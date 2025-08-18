#!/usr/bin/env bash
source "$HOME/.config/sketchybar/colors.sh"

sketchybar --add event note_change \
  --add item note left \
  --set note label.color=$BAR_ACQUA \
  script="$PLUGIN_DIR/note.sh" \
  click_script='sketchybar --trigger note_change SKETCHY_NOTE=""' \
  --subscribe note note_change
