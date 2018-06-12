#!/usr/bin/env bash

notify-send -u low "autorandr: restarting polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null
do
    sleep 1
done

# determine if this is a laptop
acpi | grep Battery > /dev/null 2> /dev/null
is_laptop=$?

if [ $is_laptop -eq 0 ]
then
    bar="laptop"
else
    bar="desktop"
fi

for i in $(polybar -m | awk -F: '{print $1}'); do
    MONITOR=$i polybar --reload "${bar}" >> /tmp/polybar-$i.log 2>&1 &
done

echo "Bars launched..."

notify-send -u low "autorandr: restarted polybar"
