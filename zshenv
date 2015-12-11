export XIM=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export XIM_PROGRAM="ibus-daemon"
export XIM_ARGS="--daemonize --xim"
export GOPATH=$HOME/.go
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config
export STEAM_FRAME_FORCE_CLOSE=1
export QT_STYLE_OVERRIDE=gtk

case $( uname -s ) in
OpenBSD)
export PKG_PATH=http://mirrors.sonic.net/pub/OpenBSD/$(uname -r)/packages/$(machine -a)/
;;
esac
