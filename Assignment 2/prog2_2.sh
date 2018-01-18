#!/bin/bash
# Assignment #2-2, William Fox, wfox96@gmail.com
echo "Assignment #2-2, William Fox, wfox96@gmail.com"

directory=$1

#Finds all files that contain "int main" and parses each line
#Pulls the file path, and file name and copies to working directory
grep "int main" $1 -r | while read -r match ; do
	source=${match%%:*}	
	filename=${source##*/}".c" #Appends .c to file name
	echo $filename	#spits file name to stdout
	cp ${source} ${filename}

done
