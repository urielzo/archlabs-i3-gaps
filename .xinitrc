#!/bin/sh

#        ___                       ___                                   ___           ___     
#       /__/|        ___          /__/\        ___           ___        /  /\         /  /\    
#      |  |:|       /  /\         \  \:\      /  /\         /  /\      /  /::\       /  /:/    
#      |  |:|      /  /:/          \  \:\    /  /:/        /  /:/     /  /:/\:\     /  /:/     
#    __|__|:|     /__/::\      _____\__\:\  /__/::\       /  /:/     /  /:/~/:/    /  /:/  ___ 
#   /__/::::\____ \__\/\:\__  /__/::::::::\ \__\/\:\__   /  /::\    /__/:/ /:/___ /__/:/  /  /\
#      ~\~~\::::/    \  \:\/\ \  \:\~~\~~\/    \  \:\/\ /__/:/\:\   \  \:\/:::::/ \  \:\ /  /:/
#       |~~|:|~~      \__\::/  \  \:\  ~~~      \__\::/ \__\/  \:\   \  \::/~~~~   \  \:\  /:/ 
#       |  |:|        /__/:/    \  \:\          /__/:/       \  \:\   \  \:\        \  \:\/:/  
#       |  |:|        \__\/      \  \:\         \__\/         \__\/    \  \:\        \  \::/   
#       |__|/                     \__\/                                 \__\/         \__\/    

# this file is run when calling startx
# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# Make ~/.toys folder executable
export PATH="${PATH}:$HOME/.tools"

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -r ~/.xprofile ] && . ~/.xprofile

# Some necessary startup
xset fp+ ~/.fonts/misc

# launch the session, commands below this line will be ignored
#exec dwm
exec i3
#exec qtile start
#exec instantwm
#exec openbox-session
