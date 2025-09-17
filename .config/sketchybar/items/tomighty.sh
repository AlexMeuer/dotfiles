sketchybar --add item tomighty right

# Hook up the plugin
sketchybar --set tomighty \
  script="$PLUGIN_DIR/tomighty.sh" \
  update_freq=1 \
  icon="$ICON_TIMER" \
  icon.color="$BAR_RED" \
  label="" \
  label.color="$BAR_RED"
