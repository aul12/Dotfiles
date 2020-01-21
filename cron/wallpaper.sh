#!/bin/bash
export DISPLAY=:0
files=(/home/paul/Pictures/Südl\ Afrika\ 2018/* /home/paul/Pictures/Südl\ Afrika\ 2017/*)
WALLPAPER=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
cp "$WALLPAPER" /home/paul/.cron/wallpaper.png
/usr/bin/feh --bg-fill "$WALLPAPER"
