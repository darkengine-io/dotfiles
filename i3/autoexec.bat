#!/bin/sh
xscreensaver -no-splash &
feh --bg-fill ~/.wallpaper.jpg &
redshift -l 45.5236111:-122.675 -t 6500:4200 &

case $( uname -s ) in
Linux)
pulseaudio --start &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
;;
esac
