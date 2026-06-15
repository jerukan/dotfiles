#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

# Keep the background visible for every space; highlight the selected one
# with an accent color and brighter icon.
if [ "$SELECTED" = "true" ]; then
  sketchybar \
    --set "$NAME" background.drawing=on \
        background.color=0xcccba6f7 \
        icon.color=0xffffffff
else
  sketchybar \
    --set "$NAME" background.drawing=on \
        background.color=0xcc1e1e2e \
        icon.color=0xffe2bfff
fi
