#!/bin/bash

export DISPLAY=:1
xhost +si:localuser:scrot

weekday=$(date +%w)
currenttime=$(date +%H%M)

if [ $weekday -gt 0 ] && 
   [ $weekday -lt 6 ] && 
   [ $currenttime -gt "0859" ] && 
   [ $currenttime -lt "1801" ]; then
cd ~/Pictures
folder_name=$(date +"%Y-%m-%d")
mkdir -p $folder_name

# Define the file names with the current timestamps
image_name="$(date '+%Y-%m-%d %H:%M:%S').jpg"

cd /tmp

# Take the screenshot of the laptop display using scrot
scrot "$image_name" -z

# Resize image
mogrify -resize 1200x800 "$image_name"

# reduce quality
jpegoptim --size=50k "$image_name"

# copy to the right folder
cp "$image_name" ~/Pictures/$folder_name/
fi
