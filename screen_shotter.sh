#!/bin/bash

cd ~/Pictures
folder_name=$(date +"%Y-%m-%d")
mkdir -p $folder_name

while true
do
    # Define the file names with the current timestamps
    image_name="$(date '+%Y-%m-%d %H:%M:%S').jpg"

    cd /tmp

    # Take the screenshot of the laptop display using scrot
    scrot "$image_name" -z

    # Resize image
    mogrify -resize 1200x800 "$image_name"

    # reduce quality
    jpegoptim --size=50k "$image_name"

    # move to the right folder
    mv "$image_name" ~/Pictures/$folder_name/

    # Wait for 1 minute before taking the next screenshot
    sleep 60
done