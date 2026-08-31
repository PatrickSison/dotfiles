#!/usr/bin/bash
# start swww
WALLPAPERS_DIR=~/Pictures/Wallpapers
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
awww img "$WALLPAPER" --transition-type wipe --transition-angle 30 --transition-step 90 
