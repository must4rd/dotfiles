#!/bin/sh


urxvt -e klx 
urxvt &
vivaldi-stable &
remmina &
sleep 1
bspc node -d '^8'
sleep 3
pidgin &

