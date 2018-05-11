#!/bin/bash

sleep 1

~/.scripts/generate_wallpapers.sh
( ~/.scripts/polybar_launch.sh & )
