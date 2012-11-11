x=1; 
y=0;
for i in $(ls *JPG); 
  do 
    counter=$(printf %05d $x);
	y=$((x%10))
 	if [ "$y" = 0 ];	then	
    	mv "$i" tmp; 
	fi
    x=$(($x+1)); 
  done