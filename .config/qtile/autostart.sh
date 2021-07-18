#!/bin/bash
# Stuff to be run at startup.

#nitrogen --restore &
picom --experimental-backends &
volumeicon &
nm-applet &
cava &
mpd &
~/.config/polybar/launch.sh &
conky -c $HOME/.config/qtile/scripts/system-overview &
wal -R
fc-cache -fv &

#dunst &
#dunstcolor &
#walp &
#qtile cmd-obj -o cmd -f restart

