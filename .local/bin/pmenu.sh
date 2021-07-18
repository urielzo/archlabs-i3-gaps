#!/bin/sh

cat <<EOF | pmenu | sh &
Browser		firefox
files		thunar
urxvt		urxvt
pywal		walp
Halt		poweroff
Reboot		reboot
EOF
