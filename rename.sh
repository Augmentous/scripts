	x=1; 
	for i in $(ls tmp/*JPG); 
	  do 
	    counter=$(printf %05d $x); 
	    echo "Renaming $i to proc-$counter.JPG";
	    mv "$i" tmp/proc-"$counter".JPG; 
	    x=$(($x+1)); 
	  done
