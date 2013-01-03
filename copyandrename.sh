#!/bin/bash

picturesdirs="/Volumes/MEMORYIO/DCIM/1??GOPRO"
pathtostore="/Users/jacobrosenthal/Pictures/gopro/pictures"
pathtoscripts="/Users/jacobrosenthal/Pictures/gopro/scripts/"

#Copy all files from the memory card to a local working directory
for i in $(ls -d $picturesdirs); 
  do 
	rsync -tr "$i" "$pathtostore" 
done

#TODO would be nice to alert here somehow

mkdir $pathtostore/sync

#name all pictures in their directory by their creation date so we get no overwrites
#then move all pictures to a common directory, sync
#sadly,because this is all in same dir it tries to copy sync to sync which is harmless but takes a bunch of time - TODO: Fix ;)
for i in $(ls $pathtostore); 
  do 
	"$pathtoscripts"namebycreatedate.sh "$pathtostore/$i/"
	mv $pathtostore/$i/*.JPG $pathtostore/sync/
done

#Finally move all pictures to a directory by their day
"$pathtoscripts"movetofolderbycreate.sh $pathtostore/sync/

#TODO would be nice to alert here somehow