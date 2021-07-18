#!/bin/bash

# options to be displayed
option0="Sync"
option1="Sync & Browse"
option2="Browse"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "Calendar")"
case $selected in
    $option0)
      urxvt -e vdirsyncer sync;;
    $option1)
      urxvt -e vdirsyncer & khal interactive;;
    $option2)
      urxvt -e khal interactive;;
esac
