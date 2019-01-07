#!/bin/sh
if [ $# -eq 0 ]
then
	
	echo "Enter The File Name :"
	read name
	if [ -e $name ]
	then
    	
	cat $name
	exit 1	
	else
    	echo "file not found"
	exit 1
	fi





	
fi
	if [ -e $1 ]
then
  	 name=$1
	cat $name
	
else
    echo "file not found"
	exit 1
fi
    	
	  


