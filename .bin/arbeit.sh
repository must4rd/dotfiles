#!/bin/sh

urxvt -e ~/.bin/klx.sh &
sleep 1
bspc desktop --focus '^1'
xdotool type 'mzsession'
sleep .1
xdotool key "Return"
bspc desktop --focus '^7'
spotify &
sleep 1
pavucontrol &
sleep 2
bspc desktop --focus '^8'
remmina &
sleep 1
xdotool key Tab
sleep .5
xdotool key "Return" 
sleep 2
bspc desktop --focus '^3'
vivaldi-stable &
#bspc node -d '^8'
sleep 3
bspc node -o 0.85
pidgin &
sleep 2
xdotool key "Return"
bspc desktop --focus '^1'
xmodmap /home/must4rd/.Xmodmap
