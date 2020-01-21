#!/bin/bash
export DISPLAY=:0
percentage=$(cat /sys/class/power_supply/BAT0/capacity)
charging=$(cat /sys/class/power_supply/BAT0/status)
if [ $percentage -lt 15 ] && [ $charging != "Charging" ]; then
    /usr/bin/notify-send "Charge your fucking battery!"
fi
