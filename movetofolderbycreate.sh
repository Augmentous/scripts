for i in $(ls *JPG); 
  do  
	name=$(exiftool -S -EXIF:CreateDate "$i")
	echo ${name:11:11}"."${name:23:12}".jpg"
  done
