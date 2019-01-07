#! /bin/sh

#### Sort The File And Display On The Console###############################

############# Sort By Words ##########################3

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

