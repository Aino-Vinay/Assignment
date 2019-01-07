################################ All Grep Trial








#!/bin/sh 



status="false";
while [ "$status" != true ]
do



echo "1.Match The Starting Pattern"


echo "2.Match The Ending Pattern"


echo "3. Match The Pattern Anywhere"

echo "4 . Exit"






read INPUT_STRING

case $INPUT_STRING in
	1)
		echo "Insert The Pattern"
		read pattern
		#####################################33
		if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep -E '\b'$pattern $name
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	grep -E '\b'$pattern $name
	
else
    echo "file not found"
	exit 1
fi


;;


		############################################
		
	2)
		echo "Insert The Pattern"
		read pattern
		if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep -E $pattern'\b' $name
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	grep -E $pattern'\b' $name
	
else
    echo "file not found"
	exit 1
fi
		
		;;
		
##########################################
3)

echo "Insert The Pattern"
		read pattern
if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	grep $pattern $name
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	grep $pattern $name
	
else
    echo "file not found"
	exit 1
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
