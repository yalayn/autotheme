#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

CONFIG="/home/yordin/Projects/autotheme/config.ini"
ENV="DARK_ENV"

read_conf() {
    local SECTION="$1"
    local KEY="$2"
    local FILE="$3"
    sed -n '/^\['$SECTION'\]/,/^\[.*\]/p' "$FILE" | awk -F "=" '/^\s*'"$KEY"'\s*/ {gsub(/^[ \t]+|[ \t]+$/, "", $2); print $2; exit}'
}

#MAIN CONFIG
hourSunrises=$(read_conf "MAIN" "hour_sunrises" "$CONFIG")
hourSunset=$(read_conf "MAIN" "hour_sunset" "$CONFIG")
pathWallpaper=$(read_conf "MAIN" "path_wallpaper" "$CONFIG")
pathDockTheme=$(read_conf "MAIN" "path_dock_theme" "$CONFIG")
hourNow=$(date +"%H")

#SELECT ENV
ENV="LIGHT_ENV"

#ENV CONFIG
gtk=$(read_conf "$ENV" "gtk" "$CONFIG")
wallpaper=$(read_conf "$ENV" "wallpaper" "$CONFIG")
dock=$(read_conf "$ENV" "dock" "$CONFIG")

#CHANGE ENV
pid=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ|cut -d= -f2-)

pic=$(ls $pathWallpaper/$wallpaper | shuf -n1)
cp $dock $pathDockTheme
gsettings set org.gnome.desktop.interface gtk-theme "$gtk"
gsettings set org.gnome.desktop.background picture-uri "file://$pic"
