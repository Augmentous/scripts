for i in $(ls *JPG); 
  do  
	name=$(exiftool -S -EXIF:CreateDate "$i")
	mv $i ${name:11:11}"."${name:23:12}".JPG"
  done
