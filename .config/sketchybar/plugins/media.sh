#!/usr/bin/env bash

RAW=$(nowplaying-cli get-raw 2>/dev/null)
TITLE=$(echo "$RAW" | jq -r '.kMRMediaRemoteNowPlayingInfoTitle // empty')

if [ -z "$TITLE" ]; then
  sketchybar --set media          drawing=off \
             --set media_timer    drawing=off \
             --set media_sep      drawing=off \
             --set media_prev     drawing=off \
             --set media_play     drawing=off \
             --set media_next     drawing=off \
             --set media_group    drawing=off \
             --set media_controls drawing=off
  exit 0
fi

ARTIST=$(echo "$RAW" | jq -r '.kMRMediaRemoteNowPlayingInfoArtist // empty')
RATE=$(echo "$RAW"   | jq -r '.kMRMediaRemoteNowPlayingInfoPlaybackRate // 0')

if [ -n "$ARTIST" ]; then
  LABEL="$TITLE - $ARTIST"
else
  LABEL="$TITLE"
fi
# Truncation/scrolling is handled by sketchybar via label.max_chars and
# label.scroll_duration on the media item (see sketchybarrc).

if [ "$RATE" = "0" ] || [ "$RATE" = "0.0" ]; then
  PLAY_ICON="󰐊"
else
  PLAY_ICON="󰏤"
fi

sketchybar \
  --animate tanh 5 \
  --set media_sep_left      drawing=on \
  --set media          drawing=on label="$LABEL" \
  --set media_timer    drawing=on \
  --set media_sep      drawing=on \
  --set media_prev     drawing=on \
  --set media_play     drawing=on icon="$PLAY_ICON" \
  --set media_next     drawing=on \
  --set media_group    drawing=on \
  --set media_controls drawing=on
