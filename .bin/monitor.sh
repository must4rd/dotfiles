#! /bin/bash 

mv ~/.config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc.bak
mv ~/.config/bspwm/bspwmrc.moni ~/.config/bspwm/bspwmrc
mv ~/.config/bspwm/bspwmrc.bak ~/.config/bspwm/bspwmrc.moni


pkill panel;~/.config/bspwm/bspwmrc
