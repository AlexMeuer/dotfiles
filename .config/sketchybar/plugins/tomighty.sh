#!/usr/bin/env bash
# show Tomighty's menubar title

source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

get_title() {
  /usr/bin/osascript <<'APPLESCRIPT'
on getTomightyTitle()
    tell application "System Events"
        if exists (application process "Tomighty") then
            tell application process "Tomighty"
                try
                    set statusItems to menu bar items of menu bar 1
                    repeat with menuItem in statusItems
                        try
                            set t to value of attribute "AXTitle" of menuItem
                            if t is not missing value and t is not "" then return t
                        end try
                    end repeat
                end try
            end tell
        end if
    end tell
    return ""
end getTomightyTitle

getTomightyTitle()
APPLESCRIPT
}

title="$(get_title)"

# Fallback label when Tomighty isn't running or has no visible title
[ -z "$title" ] && title=""

# $NAME is provided by SketchyBar to the plugin
sketchybar --set "$NAME" label="$title"
