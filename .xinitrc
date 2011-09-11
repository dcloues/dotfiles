#xcompmgr &
xset -b b off
xrdb -load $HOME/.Xdefaults
export MPD_HOST=localhost
export MPD_PORT=6600
export OOO_FORCE_DESKTOP=gnome

trayer --edge top --align center \
    --width 10 --widthtype percent --transparent true --height 16 --tint "0x0" &

#xrdb -merge .Xresources

xsetroot -solid black

if [ -x /usr/bin/nm-applet ] ; then
    nm-applet --sm-disable &
fi

if [ -x /usr/bin/gnome-power-manager ] ; then
    sleep 1
    gnome-power-manager&
fi

#gnome-settings-daemon
xsetroot -cursor_name left_ptr
exec dbus-launch --exit-with-session /home/dcloues/bin/xmonad.sh
killall gnome-keyring-daemon
