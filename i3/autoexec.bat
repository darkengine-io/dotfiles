#!/bin/sh
xscreensaver -no-splash &
feh --bg-fill ~/Downloads/1430600418538.jpg &
ibus-daemon --xim &
redshift -l 45.5236111:-122.675 -t 6500:4900 -r &

case $( uname -s ) in
Linux)
pulseaudio --start &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
;;
esac
