#!/bin/bash
# if [ "$1" == "up" ]; then
#     xbacklight -inc 10
# elif [ "$1" == "down" ]; then
#     xbacklight -dec 10
# fi

BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
DELTA=1000

if [ "$1" == "up" ]; then
    NEW_BRIGHTNESS=$((BRIGHTNESS + DELTA))
elif [ "$1" == "down" ]; then
    NEW_BRIGHTNESS=$((BRIGHTNESS - DELTA))
fi

if [ "$NEW_BRIGHTNESS" -gt "$MAX_BRIGHTNESS" ]; then
    NEW_BRIGHTNESS=$MAX_BRIGHTNESS
elif [ "$NEW_BRIGHTNESS" -lt 0 ]; then
    NEW_BRIGHTNESS=0
fi

echo "$NEW_BRIGHTNESS" > /sys/class/backlight/intel_backlight/brightness
# echo "$NEW_BRIGHTNESS" | sudo tee /sys/class/backlight/intel_backlight/brightness >/dev/null


