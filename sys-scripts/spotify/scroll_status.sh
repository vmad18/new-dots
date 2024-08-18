#!/bin/bash

# see man zscroll for documentation of the following parameters
#         --scroll-padding "  " \

# $(sh ~/.config/waybar/scripts/spotify/spotify_status.sh --artist) 

zscroll -l 15 \
        --delay 0.09 \
        --match-command "`dirname $0`/spotify_status.sh --status" \
        --match-text "Playing" "--before-text '  ' --scroll 1" \
        --match-text "Paused" "--before-text '  ' --scroll 0" \
        --update-check true "`dirname $0`/spotify_status.sh" &

wait