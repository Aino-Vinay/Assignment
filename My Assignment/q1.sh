#!/bin/sh

get_string()
{
	string=$1;
	echo $string;	
}


if [ $# -eq 0 ]
then
	echo "Enter The String:"
	read temp;
	get_string $temp 
	exit 1	
fi
	
    	temp=$1
	get_string $temp
	
  


