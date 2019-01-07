









#!/bin/sh 



echo "1.Sort Lines in Ascending Order"


echo "2.Sort Lines in Descending Order"


echo "3.Sort Words in Ascending Order"


echo "4.Sort Words in Descending Order"


echo "5.Display Word Count"


read INPUT_STRING

case $INPUT_STRING in
	1)
		#####################################33
		if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	sort $name
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	sort $name
	
else
    echo "file not found"
	exit 1
fi


;;

		############################################
		
	2)
		if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	sort -r $name 
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	sort -r $name 
	
else
    echo "file not found"
	exit 1
fi
		
		;;
		
##########################################
3)
if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	 cat $name | tr " " "\n" | sort | tr "\n" " "
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	cat $name | tr " " "\n" | sort | tr "\n" " "
	
else
    echo "file not found"
	exit 1
fi



;;



###################################

##########################################
4)
if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	

	 cat $name | tr " " "\n" | sort -r | tr "\n" " "
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	cat $name | tr " " "\n" | sort -r| tr "\n" " "
	
else
    echo "file not found"
	exit 1
fi


;;

##########################################
5)
if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	
	echo "the word count is : "
	wc -w $name

	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	
	echo "the word count is :"
	wc -w $name
	
else
    echo "file not found"
	exit 1
fi


;;



	*)
		echo "Invalid Choice"
		;;
  esac
