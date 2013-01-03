#!/bin/bash

if [ -d "$1" ]; then
    root=$1
else 
	echo "argument not a directory"
	exit 1
fi

for i in $(ls $root*JPG); 
  do  
	name=$(exiftool -S -EXIF:CreateDate "$i");
	subname=${name:12:10};
	dirname=${subname//":"/"-"};
	if [ ! -d "$root$dirname" ]; then
	    mkdir "$root$dirname"
	fi
	mv "$i" "$root$dirname"
  done
