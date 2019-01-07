








#!/bin/sh 



status="false";
while [ "$status" != true ]
do



echo "1.Match The String in Given Range"


echo "2. Search Ending n Characters"


echo "3. Search Starting n Characters"

echo "4 . Exit"






read INPUT_STRING

case $INPUT_STRING in
	1)
		echo "Insert The Starting Word"
		read word1

		echo "Insert The Ending Word"
		
		read word2
		#####################################33
		
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep --color=always -w $word1.*$word2 $name
	
	else
    	echo "file not found"
	fi





	


;;


		############################################
		
	2)
		echo "Insert The Ending Position"
		read word1
		
		#####################################33
		
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep -o '^.\{'$word1'\}' $name
	
	else
    	echo "file not found"
	fi
;;
		
##########################################
3)

echo "Insert The Staring Position"
		read word1
		
		#####################################33
		
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep -o '^.\{'$word1'\}' $name
	
	else
    	echo "file not found"
	fi
;;



###################################

4) break
	;;



	*)
		echo "Invalid Choice"
		;;
  esac




done
