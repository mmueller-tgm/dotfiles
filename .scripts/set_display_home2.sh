#!/bin/sh
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP1 --mode 1920x1080 --pos 2560x0 --rotate normal --output HDMI2 --mode 1280x1024 --pos 4480x0 --rotate left --output HDMI1 --off --output DP2 --off

~/.scripts/generate_wallpapers.sh

~/.scripts/polybar_launch.sh
