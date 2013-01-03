#!/bin/bash

if [ -d "$1" ]; then
    root=$1
else 
	echo "argument not a directory"
	exit 1
fi


for i in $(ls $root*JPG); 
  do  
	name=$(exiftool -S -EXIF:CreateDate "$i")
	mv $i $root${name:12:4}${name:17:2}${name:20:2}${name:23:2}${name:26:2}${name:29:2}.JPG
  done