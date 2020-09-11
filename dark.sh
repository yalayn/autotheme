#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#DARK THEME

CONF_GTK="'Elemactary-Dark'"
CONF_WALLPAPER="dark.jpg"
CONF_DOCK="dark-mode-transparent"

PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

GTKNOW=$(/usr/bin/gsettings get org.gnome.desktop.interface gtk-theme)

if [ "$GTKNOW" != "$CONF_GTK" ]; then
    DIR="/home/yordin/Pictures/Wallpapers"
    PIC=$(ls $DIR/$CONF_WALLPAPER | shuf -n1)
    cp /home/yordin/.local/share/plank/themes/$CONF_DOCK/dock.theme /home/yordin/.local/share/plank/themes/my-dock/dock.theme
    gsettings set org.gnome.desktop.interface gtk-theme "$CONF_GTK"
    gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
fi
