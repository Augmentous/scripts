#!/bin/bash

	x=1; 
	for i in $(ls *JPG); 
	  do 
	    counter=$(printf %04d $x); 
	    mv "$i" GOPR"$counter".JPG; 
	    x=$(($x+1)); 
	  done
