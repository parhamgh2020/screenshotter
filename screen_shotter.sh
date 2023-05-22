#!/bin/bash
mkdir -p $(date +"%Y-%m-%d")

while true
do
    # Define the file names with the current timestamps
    laptop_file_name="$(date +"%Y-%m-%d")/$(date '+%Y-%m-%d %H:%M:%S').png"

    # Take the screenshot of the laptop display using scrot
    scrot "$laptop_file_name" -z

    # Wait for 1 minute before taking the next screenshot
    sleep 60
done
