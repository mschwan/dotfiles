#!/bin/bash

ACTIVE=`xrandr --listactivemonitors`
MONITOR="DVI-I-1"
MONITOR_OPTIONS="--auto --primary"
TV="HDMI-0"
TV_OPTIONS="--mode 3840x2160 --rate 59.94 --primary"

case "$ACTIVE" in
    *"$MONITOR"*)
        # switch to TV
        xrandr --output $MONITOR --off --output $TV $TV_OPTIONS
        gsettings set org.gnome.desktop.interface scaling-factor 2
        gsettings set org.gnome.desktop.interface cursor-theme "Adwaita"
        gsettings set org.gnome.settings-daemon.plugins.xsettings overrides \
            "[{'Gdk/WindowScalingFactor', <2>}]"
        ;;
    *"$TV"*)
        # switch to regular monitor
        xrandr --output $MONITOR $MONITOR_OPTIONS --output $TV --off
        gsettings set org.gnome.desktop.interface scaling-factor 1
        gsettings set org.gnome.desktop.interface cursor-theme "DMZ-White"
        gsettings set org.gnome.settings-daemon.plugins.xsettings overrides \
            "[{'Gdk/WindowScalingFactor', <1>}]"
        ;;
esac

