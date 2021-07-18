#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar --reload mainbar-i3 -c ~/.config/polybar/config &


echo #"started the bar"

exit 0
