for i in $(ls *JPG); 
  do  
	name=$(exiftool -S -EXIF:CreateDate "$i");
	subname=${name:12:11};
	dirname=${subname//":"/"-"};
	if [ ! -d "$dirname" ]; then
	    mkdir "$dirname"
	fi
	mv "$i" "$dirname"
  done
