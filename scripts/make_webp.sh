#!/bin/bash

# Find all files of type PNG, JPEG, or TIFF
files=$(find ../hugo-content/static/img/ -type f -iname "*.png" -o -iname "*.jpg" -o -iname "*.tif")

# Loop through all the files in the directory
for file in $files; do
    # Convert the file to WEBP
    cwebp -resize 1500 0 $file -o "${file%.*}.webp"
    # Delete old file
    rm $file
done