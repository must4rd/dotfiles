#!/bin/sh

userresources=/home/must4rd/.Xresources
usermodmap=/home/must4rd/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set background
# sh ~/.fehbg

#xrandr --output HDMI-1 --primary --left-of DVI-I-2-1 --mode 2560x1080
#xrandr --output DVI-I-2-1 --left-of eDP-1 --mode 2560x1080
#xrandr --output eDP-1 --mode 1920x1080 --noprimary --right-of DVI-I-2-1

xrandr --auto
xrandr --output eDP-1 --mode 1920x1080 --pos 5120x0 --rotate normal --output HDMI-1 --primary --mode 2560x1080 --pos 0x0 --rotate normal --output DVI-I-2-1 --mode 2560x1080 --pos 2560x0 --rotate normal
# xrandr --output eDP-1-1 --mode 1920x1080 --pos 5120x0 --rotate normal --output HDMI-1-1 --primary --mode 2560x1080 --pos 0x0 --rotate normal --output DVI-I-2-1 --mode 2560x1080 --pos 2560x0 --rotate normal
sxhkd &
exec bspwm
