#! /bin/sh

#### Sort The File And Display On The Console###############################

############# linewise  in Reverse Order##########################3

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

