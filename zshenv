export GOPATH=$HOME/.go
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config
export STEAM_FRAME_FORCE_CLOSE=1
export QT_STYLE_OVERRIDE=gtk
export MOZ_USE_XINPUT2=1
export MOZ_USE_OMTC=1

case $( uname -s ) in
OpenBSD)
export PKG_PATH=http://mirrors.sonic.net/pub/OpenBSD/snapshots/packages/$(machine -a)/
;;
esac
