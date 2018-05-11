#!/bin/bash
#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep .01; done

# Launch bar1 and bar2
#polybar example &

for i in $(polybar -m | awk -F: '{print $1}'); do
 MONITOR=$i polybar example -c ~/.config/polybar/config & disown
done
# feh --bg-scale ~/.config/wall.png

echo "Bars launched..."
